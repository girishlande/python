import contextlib as __stickytape_contextlib


@__stickytape_contextlib.contextmanager
def __stickytape_temporary_dir():
    import tempfile
    import shutil
    dir_path = tempfile.mkdtemp()
    try:
        yield dir_path
    finally:
        shutil.rmtree(dir_path)


with __stickytape_temporary_dir() as __stickytape_working_dir:
    def __stickytape_write_module(path, contents):
        import os, os.path


        def make_package(path):
            parts = path.split("/")
            partial_path = __stickytape_working_dir
            for part in parts:
                partial_path = os.path.join(partial_path, part)
                if not os.path.exists(partial_path):
                    os.mkdir(partial_path)
                    with open(os.path.join(partial_path, "__init__.py"), "wb") as f:
                        f.write(b"\n")


        make_package(os.path.dirname(path))


        full_path = os.path.join(__stickytape_working_dir, path)
        with open(full_path, "wb") as module_file:
            module_file.write(contents)


    import sys as __stickytape_sys
    __stickytape_sys.path.insert(0, __stickytape_working_dir)


    __stickytape_write_module('NSEDownload/__init__.py', b'"""\r\n.. include:: ../index.md\r\n"""\r\n')
    __stickytape_write_module('NSEDownload/stocks.py', b'from NSEDownload.scraper import scrape_data\r\nimport pandas as pd\r\nimport datetime\r\nimport logging\r\n\r\nlogging.basicConfig(level=logging.INFO, format=\'%(asctime)s %(levelname)s:%(message)s\')\r\npd.options.mode.chained_assignment = None\r\n\r\n\r\ndef get_data(stock_symbol, full_data=False, start_date=None, end_date=None):\r\n    """\r\n    Function to get un-adjusted data for stocks\r\n\r\n    Args:\r\n        stock_symbol (str): Scrip or Stock symbol in uppercase only\r\n        full_data (bool, optional): Parameter to get complete data since inception. Defaults to False.\r\n        start_date ([input_type], optional): start date of date range in YYYY-MM-DD or DD-MM-YYYY format.\r\n        Defaults to None.\r\n        end_date ([input_type], optional): end date of date range in YYYY-MM-DD or DD-MM-YYYY format. Defaults to None.\r\n\r\n    Raises:\r\n        ValueError: If no dates are provided/ Incorrect format of dates/ If start date > end date\r\n\r\n    Returns:\r\n        DataFrame: Data for stocksymbol for given date range\r\n\r\n    ##Example\r\n    ```\r\n    # Providing date range\r\n    df = stocks.get_data(stock_symbol="RELIANCE", start_date=\'15-9-2021\', end_date=\'1-10-2021\')\r\n    ```\r\n    Output\r\n    ```\r\n    | Date                     | Symbol | Series | High Price | Low Price | Open Price | Close Price | Last Price | Prev Close Price | Total Traded Quantity | Total Traded Value | 52 Week High Price | 52 Week Low Price |\r\n    |--------------------------|--------|--------|------------|-----------|------------|-------------|------------|------------------|-----------------------|--------------------|--------------------|-------------------|\r\n    | 2021-08-11T18:30:00.000Z | HDFC   | EQ     | 2675.25    | 2646.6    | 2656.6     | 2668.75     | 2666.0     | 2658.5           | 1702479               | 4532596291.9       | 2896               | 1623              |\r\n    | 2021-08-12T18:30:00.000Z | HDFC   | EQ     | 2715.0     | 2662.0    | 2662.0     | 2704.15     | 2702.1     | 2668.75          | 3248615               | 8774705017.55      | 2896               | 1623              |\r\n    | 2021-08-15T18:30:00.000Z | HDFC   | EQ     | 2734.45    | 2693.8    | 2696.8     | 2731.15     | 2732.7     | 2704.15          | 2465887               | 6709996706.95      | 2896               | 1623              |\r\n    | 2021-08-16T18:30:00.000Z | HDFC   | EQ     | 2750.0     | 2707.15   | 2729.95    | 2738.4      | 2745.6     | 2731.15          | 2795510               | 7620988084.3       | 2896               | 1623              |\r\n    | 2021-08-17T18:30:00.000Z | HDFC   | EQ     | 2770.3     | 2698.0    | 2750.0     | 2710.75     | 2710.0     | 2738.4           | 2501410               | 6828940469.75      | 2896               | 1623              |\r\n\r\n    ```\r\n\r\n    ```\r\n    # Using full_data argument\r\n    df = stocks.get_data(stock_symbol=\'RELIANCE\', full_data=True)\r\n\r\n    ```\r\n\r\n    """\r\n\r\n    stock_symbol = stock_symbol.replace(\'&\', \'%26\')\r\n\r\n    if full_data is True:\r\n        parsed_start_date = datetime.datetime.strptime(\'1-1-1992\', "%d-%m-%Y")\r\n        parsed_end_date = datetime.datetime.today()\r\n\r\n    else:\r\n        if start_date is None or end_date is None:\r\n            raise ValueError("Provide start and end date.")\r\n\r\n        parsed_start_date = parse_date(start_date)\r\n        parsed_end_date = parse_date(end_date)\r\n\r\n        if parsed_start_date > parsed_end_date:\r\n            raise ValueError("Starting date is greater than end date.")\r\n\r\n    result = scrape_data(start_date=parsed_start_date, end_date=parsed_end_date, input_type=\'stock\', name=stock_symbol)\r\n    return result\r\n\r\n\r\ndef parse_date(text):\r\n    """\r\n    Parses date in either YYYY-MM-DD or DD-MM-YYYY format\r\n    """\r\n\r\n    for fmt in (\'%Y-%m-%d\', \'%d-%m-%Y\'):\r\n        try:\r\n            return datetime.datetime.strptime(text, fmt)\r\n        except ValueError:\r\n            pass\r\n\r\n    raise ValueError(\'Dates should be in YYYY-MM-DD or DD-MM-YYYY format\')\r\n')
    __stickytape_write_module('NSEDownload/scraper.py', b'from concurrent.futures import ALL_COMPLETED\r\n\r\nimport json\r\nimport datetime\r\nimport requests\r\nimport math\r\nimport pandas as pd\r\nimport urllib.parse\r\nimport concurrent.futures\r\nimport logging\r\n\r\nHISTORICAL_DATA_URL = \'https://www.nseindia.com/api/historical/cm/equity?series=[%22EQ%22]&\'\r\nBASE_URL = \'https://www.nseindia.com/\'\r\nCORPORATE_EVENTS_URL = \'https://www.nseindia.com/api/corporate-announcements?\'\r\n\r\nlogging.basicConfig(level=logging.INFO, format=\'%(asctime)s %(levelname)s:%(message)s\')\r\n\r\n\r\ndef get_headers():\r\n    return {\r\n        "Host": "www1.nseindia.com",\r\n        "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:84.0) Gecko/20100101 Firefox/84.0",\r\n        "Accept": "*/*",\r\n        "Accept-Language": "en-US,en;q=0.5",\r\n        "Accept-Encoding": "gzip, deflate, br",\r\n        "X-Requested-With": "XMLHttpRequest",\r\n        "Referer": "https://www1.nseindia.com/products/content/equities/equities/eq_security.htm",\r\n        "Access-Control-Allow-Origin": "*",\r\n        "Access-Control-Allow-Methods": "GET,POST,PUT,DELETE,OPTIONS",\r\n        "Access-Control-Allow-Headers": "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With",\r\n        \'Content-Type\': \'application/start_date-www-form-urlencoded; charset=UTF-8\'\r\n    }\r\n\r\n\r\ndef get_adjusted_headers():\r\n    return {\r\n        \'Host\': \'www.nseindia.com\',\r\n        \'User-Agent\': \'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:85.0) Gecko/20100101 Firefox/85.0\',\r\n        \'Accept\': \'*/*\',\r\n        \'Accept-Language\': \'en-US,en;q=0.5\',\r\n        \'Accept-Encoding\': \'gzip, deflate, br\',\r\n        \'X-Requested-With\': \'XMLHttpRequest\',\r\n        \'DNT\': \'1\',\r\n        \'Connection\': \'keep-alive\',\r\n    }\r\n\r\n\r\ndef fetch_cookies():\r\n    response = requests.get(BASE_URL, timeout=30, headers=get_adjusted_headers())\r\n    if response.status_code != requests.codes.ok:\r\n        logging.error("Fetched url: %s with status code: %s and response from server: %s" % (\r\n            BASE_URL, response.status_code, response.content))\r\n        raise ValueError("Please try again in a minute.")\r\n    return response.cookies.get_dict()\r\n\r\n\r\ndef fetch_url(url, cookies):\r\n    """\r\n        This is the function call made by each thread. A get request is made for given start and end date, response is\r\n        parsed and dataframe is returned\r\n    """\r\n\r\n    response = requests.get(url, timeout=30, headers=get_adjusted_headers(), cookies=cookies)\r\n    if response.status_code == requests.codes.ok:\r\n        json_response = json.loads(response.content)\r\n        return pd.DataFrame.from_dict(json_response[\'data\'])\r\n    else:\r\n        logging.error("Fetched url: %s with status code: %s and response from server: %s" % (\r\n            BASE_URL, response.status_code, response.content))\r\n        raise ValueError("Please try again in a minute.")\r\n\r\n\r\ndef scrape_data(start_date, end_date, input_type, name):\r\n    """\r\n    Called by stocks and indices to scrape data.\r\n    Create threads for different requests, parses data, combines them and returns dataframe\r\n\r\n    Args:\r\n        start_date (datetime.datetime): start date\r\n        end_date (datetime.datetime): end date\r\n        input_type (str): Either \'stock\' or \'index\'\r\n        name (str, optional): stock symbol or index name. Defaults to None.\r\n\r\n    Returns:\r\n        Pandas DataFrame: df containing data for stocksymbol for provided date range\r\n    """\r\n\r\n    stage, total_stages = 0, math.ceil((end_date - start_date).days / 50)\r\n    threads, url_list = [], []\r\n    cookies = fetch_cookies()\r\n\r\n    for stage in range(total_stages):\r\n        fetch_end_date = end_date - stage * datetime.timedelta(days=50)\r\n        fetch_start_date = fetch_end_date - datetime.timedelta(days=50)\r\n        if input_type == \'stock\':\r\n            params = {\'symbol\': name,\r\n                      \'from\': fetch_start_date.strftime("%d-%m-%Y"),\r\n                      \'to\': fetch_end_date.strftime("%d-%m-%Y")}\r\n            url = HISTORICAL_DATA_URL + urllib.parse.urlencode(params)\r\n            url_list.append(url)\r\n\r\n    result = pd.DataFrame()\r\n    with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:\r\n        future_to_url = {executor.submit(fetch_url, url, cookies): url for url in url_list}\r\n        concurrent.futures.wait(future_to_url, return_when=ALL_COMPLETED)\r\n        for future in concurrent.futures.as_completed(future_to_url):\r\n            url = future_to_url[future]\r\n            try:\r\n                df = future.result()\r\n                result = pd.concat([result, df])\r\n            except Exception as exc:\r\n                logging.error(\'%r generated an exception: %s. Please try again later.\' % (url, exc))\r\n                raise exc\r\n\r\n    return format_dataframe_result(result)\r\n\r\n\r\ndef format_dataframe_result(result):\r\n    columns_required = ["TIMESTAMP", "CH_SYMBOL", "CH_SERIES", "CH_TRADE_HIGH_PRICE",\r\n                        "CH_TRADE_LOW_PRICE", "CH_OPENING_PRICE", "CH_CLOSING_PRICE", "CH_LAST_TRADED_PRICE",\r\n                        "CH_PREVIOUS_CLS_PRICE", "CH_TOT_TRADED_QTY", "CH_TOT_TRADED_VAL", "CH_52WEEK_HIGH_PRICE",\r\n                        "CH_52WEEK_LOW_PRICE"]\r\n    result = result[columns_required]\r\n    result = result.set_axis(\r\n        [\'Date\', \'Symbol\', \'Series\', \'High Price\', \'Low Price\', \'Open Price\', \'Close Price\', \'Last Price\',\r\n         \'Prev Close Price\', \'Total Traded Quantity\', \'Total Traded Value\', \'52 Week High Price\',\r\n         \'52 Week Low Price\'], axis=1)\r\n    result.set_index(\'Date\', inplace=True)\r\n    result.sort_index(inplace=True)\r\n    return result\r\n')
    from NSEDownload import stocks
    from datetime import datetime,timedelta,date
    import math
    from prettytable import PrettyTable
    import sys
    import os
    #| Date   | Symbol | Series | High Price | Low Price | Open Price | Close Price | Last Price | Prev Close Price | Total Traded Quantity | Total Traded Value | 52 Week High Price | 52 Week Low Price |
   
    def printAverage(stockname,startdate,enddate,days):
        days = 15
        cols = 3
        nrows=days/cols
        df = stocks.get_data(stock_symbol=stockname, start_date=startdate, end_date=enddate)
        r = df["Close Price"].tail(days)
        sum = 0.0
        lowest = 0.0
        highest = 0.0
        flowstr=""
        
        x = PrettyTable()
        
        pricecol = []
        percol = []
        avg5 = [0.0,0.0,0.0,0.0,0.0]
        for i in range(0,days):
          if len(r) <= i:
            return
          sum += r[i]
          
          p = 0
          if i!=0:
            d1 = r[i-1]
            d2 = r[i]
            diff = d2 - d1
            p = diff / d1 * 100
            avg5.pop(0)
            avg5.append(p)
            if r[i] < lowest:
                lowest = r[i]
            if r[i] > highest:
                highest = r[i]    
          else:
            lowest = r[i]  
            highest = r[i]
          #print("   ",stockname,":",i,":","{:.2f}".format(r[i])," P:{:.2f}".format(p))
          pricecol.append("{:.2f}".format(r[i]))
          percol.append("{:.2f}".format(p))
          if nrows==len(pricecol):
              x.add_column("Price",pricecol)
              x.add_column("Per",percol)
              pricecol.clear()
              percol.clear()
          
   
        curr = r[days-1]
        avg = sum/(days)
        diff = curr - avg
        per = diff / avg * 100
        nshare = math.floor(50000/curr)
   
        h = df["52 Week High Price"].tail(1)
        print(stockname)
        print(x)
        print("LOW:{:.2f}".format(lowest)," HIGH:{:.2f}".format(highest)," AVG:{:.2f}".format(avg)," AllTime:",h[0])
        print("CUR:{:.2f}".format(curr)," P:{:.2f}".format(per)," CNT:",nshare)
        
        sum5 = 0.0
        for v in avg5:
            sum5+=v
        if sum5 < -2.0:
           print("#RECOMMENDED SHARE")     
        print()
       
           
   
    ndays = 5
   
    enddate = datetime.today().strftime('%d-%m-%Y')
    tod = datetime.now()
    d = timedelta(days = ndays)
    a = tod - d
    startdate = a.strftime('%d-%m-%Y')
   
    ml = []
    ml.append("RPOWER")
    ml.append("TATAPOWER")
    ml.append("TATAMOTORS")
    ml.append("HCLTECH")
    ml.append("DELTACORP")
    ml.append("SUZLON")
    ml.append("KPITTECH")
    ml.append("HDFCLIFE")
    ml.append("ICICIPRULI")
    ml.append("M&M")
    ml.append("RELIANCE")
    ml.append("WIPRO")
    ml.append("LT")
    ml.append("INFY")
    ml.append("TCS")
    ml.append("EICHERMOT")
    ml.append("SIEMENS")
    ml.append("TATASTEEL")
    ml.append("LTIM")
    ml.append("HINDALCO")
    ml.append("SBILIFE")
    ml.append("DELHIVERY")
    ml.append("J&KBANK")
    ml.append("INDUSINDBK")
    ml.append("KOTAKBANK")
    ml.append("ICICIBANK")
    ml.append("HDFCBANK")
    ml.append("OLECTRA")
    ml.append("BAJAJFINSV")
    ml.append("PTC")
    ml.append("BEL")
    ml.append("SJVN")
    ml.append("PEL")
    ml.append("VEDL")
    ml.append("RAILTEL")
    ml.append("JINDALSTEL")
    ml.append("SHOPERSTOP")
    
    
    
    
    
    ml.sort()
    
   
   
   
    today = date.today()
    daystr = today.strftime("%d_%m_%Y.txt")
    filename = os.path.dirname(os.path.abspath(__file__)) + daystr
    script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
    filename = os.path.join(script_directory,daystr)
    
    print("Filename:",filename)
    with open(filename, 'w') as f:
        sys.stdout = f

        for i in ml:
            printAverage(i,startdate,enddate,ndays)
        
    sys.stdout = sys.__stdout__
    print("Done")
   