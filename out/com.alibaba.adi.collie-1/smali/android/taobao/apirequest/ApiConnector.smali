.class public Landroid/taobao/apirequest/ApiConnector;
.super Ljava/lang/Object;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/ApiConnector$NetworkFail;,
        Landroid/taobao/apirequest/ApiConnector$RedirectException;,
        Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;,
        Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;,
        Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;,
        Landroid/taobao/apirequest/ApiConnector$APIStat;,
        Landroid/taobao/apirequest/ApiConnector$API;,
        Landroid/taobao/apirequest/ApiConnector$ConnStat;,
        Landroid/taobao/apirequest/ApiConnector$SingleConnStat;,
        Landroid/taobao/apirequest/ApiConnector$ConnState;
    }
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "accept"

.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "accept-encoding"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONTENTTYPE:Ljava/lang/String; = "content-type"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "content-range"

.field static DNS_TIMEOUT_THRESHOLD:J = 0x0L

.field public static final EXPIRES_TIME:Ljava/lang/String; = "expires"

.field static HOST_MATCHER_REGEX:Ljava/lang/String; = null

.field static HOST_REPLACEMENT:Ljava/lang/String; = null

.field static final HTTP_MONITOR_RESULT:Ljava/lang/String; = "httpMonitorResult"

.field static final HTTP_MONITOR_WARNING:Ljava/lang/String; = "httpMonitorWarning"

.field public static final IF_MODIFY_SINCE:Ljava/lang/String; = "if-modified-since"

.field static IS_OPEN_KEEP_ALIVE:Z = false

.field static IS_REPLACE_HOST:Z = false

.field public static final LASTMODIFIED_TIME:Ljava/lang/String; = "last-modified"

.field private static final MAX_REDIRECT_TIME:I = 0x5

.field static M_RAN:Ljava/util/Random; = null

.field public static final REDIRECT_LOCATION:Ljava/lang/String; = "location"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "response-code"

.field static SAMPLE_FREQUENCY_NUM:I = 0x0

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field static connect_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

.field static dns_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

.field static getdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

.field static getfirstdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

.field static getreponsecode_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

.field static m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

.field static m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

.field static m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

.field private static m_redirectHandler:Landroid/taobao/apirequest/ConnRedirectHandler;

.field private static m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

.field static whole_process_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final UA:Ljava/lang/String;

.field private apiProperty:Landroid/taobao/apirequest/ApiProperty;

.field private cancelled:Z

.field private fullUrl:Ljava/lang/String;

.field private m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

.field private m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

.field private m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

.field private redirectTime:I

.field private requestStartTimestamp:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const-wide/16 v0, 0x1770

    sput-wide v0, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    .line 67
    const/16 v0, 0x14

    sput v0, Landroid/taobao/apirequest/ApiConnector;->SAMPLE_FREQUENCY_NUM:I

    .line 68
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->M_RAN:Ljava/util/Random;

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Landroid/taobao/apirequest/ApiConnector;->IS_OPEN_KEEP_ALIVE:Z

    .line 80
    sput-boolean v2, Landroid/taobao/apirequest/ApiConnector;->IS_REPLACE_HOST:Z

    .line 81
    const-string v0, "img2012\\.i0[1-4]\\.wimg\\.taobao\\.com|q\\.i0[1-4]\\.wimg\\.taobao\\.com|img0[1-4]\\.taobaocdn\\.com"

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->HOST_MATCHER_REGEX:Ljava/lang/String;

    .line 82
    const-string v0, "gwl01.alicdn.com"

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->HOST_REPLACEMENT:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->connect_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->getreponsecode_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->getfirstdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->getdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->whole_process_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->dns_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)V
    .locals 3
    .parameter "url"
    .parameter "property"

    .prologue
    const/4 v2, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object v2, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    .line 537
    iput-object v2, p0, Landroid/taobao/apirequest/ApiConnector;->m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

    .line 636
    const-string v0, "anclient"

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->UA:Ljava/lang/String;

    .line 652
    const-string v0, "anclient"

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->userAgent:Ljava/lang/String;

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector;->redirectTime:I

    .line 655
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    .line 853
    iput-object v2, p0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    .line 676
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;

    invoke-direct {v0, p0}, Landroid/taobao/apirequest/ApiConnector$ConnStat;-><init>(Landroid/taobao/apirequest/ApiConnector;)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    .line 679
    :cond_0
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;

    invoke-direct {v0, p0}, Landroid/taobao/apirequest/ApiConnector$ConnStat;-><init>(Landroid/taobao/apirequest/ApiConnector;)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    .line 683
    :cond_1
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

    if-nez v0, :cond_2

    .line 685
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$APIStat;

    invoke-direct {v0, p0}, Landroid/taobao/apirequest/ApiConnector$APIStat;-><init>(Landroid/taobao/apirequest/ApiConnector;)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

    .line 687
    :cond_2
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->HOST_MATCHER_REGEX:Ljava/lang/String;

    sget-object v1, Landroid/taobao/apirequest/ApiConnector;->HOST_REPLACEMENT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Landroid/taobao/apirequest/ApiConnector;->replaceHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    .line 688
    if-eqz p2, :cond_3

    .line 690
    iput-object p2, p0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    .line 697
    :goto_0
    sget-boolean v0, Landroid/taobao/apirequest/ApiConnector;->IS_OPEN_KEEP_ALIVE:Z

    if-eqz v0, :cond_4

    .line 698
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    :goto_1
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    .line 707
    new-instance v0, Landroid/taobao/apirequest/DNSResolver;

    invoke-direct {v0}, Landroid/taobao/apirequest/DNSResolver;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

    .line 708
    return-void

    .line 694
    :cond_3
    new-instance v0, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    goto :goto_0

    .line 700
    :cond_4
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private dataConnect()Landroid/taobao/apirequest/ApiResult;
    .locals 75
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;,
            Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;,
            Landroid/taobao/apirequest/ApiConnector$RedirectException;,
            Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
        }
    .end annotation

    .prologue
    .line 891
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    .line 892
    .local v8, surl:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    .line 894
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApiConnector:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v3, "https"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_12

    const/16 v40, 0x1

    .line 900
    .local v40, isHttps:Z
    :goto_0
    const/16 v38, 0x0

    .line 901
    .local v38, is:Ljava/util/zip/GZIPInputStream;
    const/16 v24, 0x0

    .line 902
    .local v24, cs:Landroid/taobao/apirequest/CounterInputStream;
    const/16 v64, 0x0

    .line 903
    .local v64, tmp:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 904
    .local v18, bs:Ljava/io/ByteArrayOutputStream;
    const/16 v29, 0x0

    .line 905
    .local v29, dis:Ljava/io/DataInputStream;
    const/16 v27, 0x0

    .line 906
    .local v27, data:[B
    const-string v35, ""

    .line 908
    .local v35, host:Ljava/lang/String;
    const/16 v20, 0x0

    .line 909
    .local v20, conn:Ljava/net/HttpURLConnection;
    const/4 v4, -0x1

    .line 910
    .local v4, responeCode:I
    const/16 v52, 0x0

    .line 911
    .local v52, sPostData:[B
    const-wide/16 v60, 0x0

    .line 912
    .local v60, time:J
    const-wide/16 v62, 0x0

    .line 913
    .local v62, timeAPI:J
    const/16 v26, 0x0

    .line 915
    .local v26, curStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;
    const/4 v13, 0x0

    .line 917
    .local v13, apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiRequestMgr;->getTimeout()I

    move-result v59

    .line 920
    .local v59, theTimeout:I
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->START:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 923
    .local v9, _connState:Landroid/taobao/apirequest/ApiConnector$ConnState;
    const/4 v10, 0x0

    .line 924
    .local v10, _referCount:Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v11, 0x0

    .line 925
    .local v11, _referDataCount:Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v12, 0x0

    .line 927
    .local v12, _referWholeProcessCount:Ljava/util/concurrent/atomic/AtomicInteger;
    const-wide/16 v55, 0x0

    .line 932
    .local v55, startTime:J
    :try_start_0
    sget-object v12, Landroid/taobao/apirequest/ApiConnector;->whole_process_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 933
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_0

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->whole_process_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    .line 938
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-boolean v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_bPost:Z

    if-eqz v3, :cond_2

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_postData:[B

    if-eqz v3, :cond_13

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v0, v3, Landroid/taobao/apirequest/ApiProperty;->m_postData:[B

    move-object/from16 v52, v0

    .line 952
    :cond_1
    :goto_1
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v52

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_2
    new-instance v68, Ljava/net/URL;

    move-object/from16 v0, v68

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 956
    .local v68, url:Ljava/net/URL;
    invoke-virtual/range {v68 .. v68}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v35

    .line 958
    if-nez v35, :cond_14

    .line 960
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;

    const-string v6, "host is null"

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-direct {v3, v0, v6, v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    .line 1585
    .end local v68           #url:Ljava/net/URL;
    :catch_0
    move-exception v32

    .line 1587
    .local v32, e:Landroid/taobao/apirequest/ApiConnector$RedirectException;
    :goto_2
    if-eqz v26, :cond_3

    .line 1589
    :try_start_1
    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    :try_start_2
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    const-wide/16 v71, 0x1

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 1592
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 1596
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_4

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_REDIERECT_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1598
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-virtual/range {v32 .. v32}, Landroid/taobao/apirequest/ApiConnector$RedirectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1601
    :cond_4
    throw v32
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1797
    .end local v32           #e:Landroid/taobao/apirequest/ApiConnector$RedirectException;
    :catchall_0
    move-exception v3

    move-object/from16 v71, v3

    :goto_3
    if-eqz v10, :cond_5

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_5
    if-eqz v11, :cond_6

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_6
    if-eqz v12, :cond_7

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_8

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_b

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .local v5, readsize:I
    if-eqz v18, :cond_9

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_9
    if-eqz v24, :cond_a

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_a
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_b
    if-eqz v29, :cond_c

    .line 1842
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4b

    .line 1848
    :cond_c
    :goto_4
    if-eqz v64, :cond_d

    .line 1851
    :try_start_5
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4c

    .line 1857
    :cond_d
    :goto_5
    if-eqz v24, :cond_e

    .line 1860
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4d

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_e
    :goto_6
    if-eqz v38, :cond_f

    .line 1870
    :try_start_7
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4e

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_f
    :goto_7
    if-eqz v18, :cond_10

    .line 1883
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4f

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_10
    :goto_8
    if-eqz v20, :cond_11

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v71

    .line 897
    .end local v4           #responeCode:I
    .end local v9           #_connState:Landroid/taobao/apirequest/ApiConnector$ConnState;
    .end local v10           #_referCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v11           #_referDataCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12           #_referWholeProcessCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13           #apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;
    .end local v18           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v20           #conn:Ljava/net/HttpURLConnection;
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v26           #curStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;
    .end local v27           #data:[B
    .end local v29           #dis:Ljava/io/DataInputStream;
    .end local v35           #host:Ljava/lang/String;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .end local v40           #isHttps:Z
    .end local v52           #sPostData:[B
    .end local v55           #startTime:J
    .end local v59           #theTimeout:I
    .end local v60           #time:J
    .end local v62           #timeAPI:J
    .end local v64           #tmp:Ljava/io/InputStream;
    :cond_12
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 944
    .restart local v4       #responeCode:I
    .restart local v9       #_connState:Landroid/taobao/apirequest/ApiConnector$ConnState;
    .restart local v10       #_referCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v11       #_referDataCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v12       #_referWholeProcessCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v13       #apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;
    .restart local v18       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #conn:Ljava/net/HttpURLConnection;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v26       #curStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;
    .restart local v27       #data:[B
    .restart local v29       #dis:Ljava/io/DataInputStream;
    .restart local v35       #host:Ljava/lang/String;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    .restart local v40       #isHttps:Z
    .restart local v52       #sPostData:[B
    .restart local v55       #startTime:J
    .restart local v59       #theTimeout:I
    .restart local v60       #time:J
    .restart local v62       #timeAPI:J
    .restart local v64       #tmp:Ljava/io/InputStream;
    :cond_13
    const/16 v3, 0x3f

    :try_start_9
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v48

    .line 945
    .local v48, pos:I
    if-ltz v48, :cond_1

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v48, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    add-int/lit8 v6, v48, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v52

    goto/16 :goto_1

    .line 963
    .end local v48           #pos:I
    .restart local v68       #url:Ljava/net/URL;
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v60

    .line 964
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v55

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

    if-eqz v3, :cond_18

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    move-object/from16 v0, v35

    iput-object v0, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 993
    sget-boolean v3, Landroid/taobao/util/NetWork;->proxy:Z

    if-nez v3, :cond_18

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->dns_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

    sget-wide v6, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v6, v7}, Landroid/taobao/apirequest/DNSResolver;->resolveHost(Ljava/lang/String;J)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    move-result-object v31

    .line 996
    .local v31, dnsResult:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    move-object/from16 v0, v31

    iget-wide v6, v0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    move-object/from16 v0, v31

    iget v6, v0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->isCached:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iget-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    const-wide/16 v71, 0x0

    cmp-long v3, v6, v71

    if-gez v3, :cond_17

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    const/4 v6, 0x1

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    const/16 v6, 0x9

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    const-string v6, "outerDNSTimeout"

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1003
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;

    const-string v6, "DNS resolved timeout"

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v40

    invoke-direct {v3, v0, v6, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;IZ)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 1603
    .end local v31           #dnsResult:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .end local v68           #url:Ljava/net/URL;
    :catch_1
    move-exception v32

    .line 1605
    .local v32, e:Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;
    :goto_9
    if-eqz v26, :cond_15

    .line 1607
    :try_start_a
    monitor-enter v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1609
    :try_start_b
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    const-wide/16 v71, 0x1

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 1610
    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1614
    :cond_15
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_16

    .line 1615
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_APIOVERFLOW_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1619
    :cond_16
    throw v32
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1005
    .end local v32           #e:Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;
    .restart local v31       #dnsResult:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .restart local v68       #url:Ljava/net/URL;
    :cond_17
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    move-object/from16 v0, v31

    iget v6, v0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->threadTag:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 1009
    .end local v31           #dnsResult:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    :cond_18
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->DNS:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1011
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open Connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_d .. :try_end_d} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 1015
    if-eqz v40, :cond_3e

    .line 1017
    const/16 v28, 0x0

    .line 1020
    .local v28, defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_start_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-le v3, v6, :cond_1d

    const/16 v41, 0x1

    .line 1023
    .local v41, isOSSupport:Z
    :goto_a
    const/16 v66, 0x0

    .line 1024
    .local v66, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    if-eqz v41, :cond_1e

    invoke-static {}, Landroid/taobao/apirequest/X509TrustManagerStrategy;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1026
    const/4 v3, 0x1

    new-array v0, v3, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v66, v0

    .end local v66           #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    invoke-static {}, Landroid/taobao/apirequest/X509TrustManagerStrategy;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v6

    aput-object v6, v66, v3

    .line 1047
    .restart local v66       #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :goto_b
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v53

    .line 1048
    .local v53, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1049
    invoke-virtual/range {v53 .. v53}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_8

    move-result-object v28

    .line 1056
    .end local v41           #isOSSupport:Z
    .end local v53           #sc:Ljavax/net/ssl/SSLContext;
    .end local v66           #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :goto_c
    const/16 v67, 0x0

    .line 1058
    .local v67, tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    :try_start_f
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/common/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/taobao/util/NetWork;->getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v49

    .line 1060
    .local v49, proxy:Lorg/apache/http/HttpHost;
    if-eqz v49, :cond_1f

    .line 1061
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https:proxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v49 .. v49}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v49 .. v49}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    new-instance v67, Landroid/taobao/apirequest/SSLTunnelSocketFactory;

    .end local v67           #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    invoke-virtual/range {v49 .. v49}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v49 .. v49}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v67

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v6, v1, v7}, Landroid/taobao/apirequest/SSLTunnelSocketFactory;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V

    .line 1067
    .restart local v67       #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    :goto_d
    invoke-virtual/range {v68 .. v68}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v36

    check-cast v36, Ljavax/net/ssl/HttpsURLConnection;

    .line 1070
    .local v36, httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    if-eqz v67, :cond_2f

    .line 1071
    move-object/from16 v0, v36

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1077
    :goto_e
    invoke-static {}, Landroid/taobao/apirequest/X509TrustManagerStrategy;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    if-nez v3, :cond_19

    .line 1078
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/taobao/apirequest/ApiConnector$2;-><init>(Landroid/taobao/apirequest/ApiConnector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1086
    :cond_19
    move-object/from16 v20, v36

    .line 1087
    const-string v3, "Connection"

    const-string v6, "Keep-Alive"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    .end local v28           #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v36           #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v49           #proxy:Lorg/apache/http/HttpHost;
    .end local v67           #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    :goto_f
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Connection ppp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set setTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, v20

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1104
    move-object/from16 v0, v20

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getPriority()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3f

    const/16 v16, 0x1

    .line 1107
    .local v16, bImageDownload:Z
    :goto_10
    if-nez v16, :cond_40

    .line 1109
    sget-object v26, Landroid/taobao/apirequest/ApiConnector;->m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    .line 1110
    sget-object v13, Landroid/taobao/apirequest/ApiConnector;->m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

    .line 1118
    :goto_11
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1120
    const-string v3, "Host"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v3, "User-Agent"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/taobao/apirequest/ApiConnector;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v3, "TB-UA"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/taobao/apirequest/ApiConnector;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    sget-boolean v3, Landroid/taobao/apirequest/ApiConnector;->IS_OPEN_KEEP_ALIVE:Z

    if-eqz v3, :cond_41

    .line 1124
    const-string v3, "Connection"

    const-string v6, "keep-alive"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_12
    const-string v3, "Accept-Encoding"

    const-string v6, "gzip"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const/16 v17, 0x0

    .line 1130
    .local v17, bUseRange:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v6, v3, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    const-wide/16 v71, 0x0

    cmp-long v3, v6, v71

    if-lez v3, :cond_1a

    .line 1132
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Range from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v3, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/16 v17, 0x1

    .line 1136
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    if-eqz v3, :cond_43

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .line 1139
    .local v42, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_13
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1141
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/Map$Entry;

    .line 1142
    .local v34, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_f .. :try_end_f} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_13

    .line 1621
    .end local v16           #bImageDownload:Z
    .end local v17           #bUseRange:Z
    .end local v34           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v42           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v68           #url:Ljava/net/URL;
    :catch_2
    move-exception v32

    .line 1623
    .local v32, e:Ljava/net/SocketTimeoutException;
    :goto_14
    if-eqz v26, :cond_1b

    .line 1625
    :try_start_10
    monitor-enter v26
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1627
    :try_start_11
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    const-wide/16 v71, 0x1

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 1628
    monitor-exit v26
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 1632
    :cond_1b
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_1c

    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_SOCKETTIMEOUT_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1634
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": sockettimeout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1637
    :cond_1c
    const-string v3, "httpMonitorWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocketTimeout Exception!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiRequestMgr;->onTimeout()V

    .line 1645
    invoke-virtual/range {v32 .. v32}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 1646
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "host:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v40

    invoke-direct {v3, v0, v6, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;IZ)V

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1020
    .end local v32           #e:Ljava/net/SocketTimeoutException;
    .restart local v28       #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v68       #url:Ljava/net/URL;
    :cond_1d
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 1029
    .restart local v41       #isOSSupport:Z
    .restart local v66       #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :cond_1e
    :try_start_13
    const-string v3, "https"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use the all trust :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v3, 0x1

    new-array v0, v3, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v66, v0

    .end local v66           #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    new-instance v6, Landroid/taobao/apirequest/ApiConnector$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/taobao/apirequest/ApiConnector$1;-><init>(Landroid/taobao/apirequest/ApiConnector;)V

    aput-object v6, v66, v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_8

    .restart local v66       #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    goto/16 :goto_b

    .line 1051
    .end local v41           #isOSSupport:Z
    .end local v66           #trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :catch_3
    move-exception v32

    .line 1052
    .local v32, e:Ljava/lang/Exception;
    :try_start_14
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_c

    .line 1649
    .end local v28           #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v32           #e:Ljava/lang/Exception;
    .end local v68           #url:Ljava/net/URL;
    :catch_4
    move-exception v32

    .line 1650
    .local v32, e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
    :goto_15
    :try_start_15
    throw v32
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1064
    .end local v32           #e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
    .restart local v28       #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v49       #proxy:Lorg/apache/http/HttpHost;
    .restart local v67       #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    .restart local v68       #url:Ljava/net/URL;
    :cond_1f
    :try_start_16
    const-string v3, "TaoSdk.ApiRequest"

    const-string v6, "https:proxy: none"

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/EOFException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto/16 :goto_d

    .line 1652
    .end local v28           #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v49           #proxy:Lorg/apache/http/HttpHost;
    .end local v67           #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    .end local v68           #url:Ljava/net/URL;
    :catch_5
    move-exception v32

    .line 1655
    .local v32, e:Ljava/io/FileNotFoundException;
    :goto_16
    if-eqz v26, :cond_20

    .line 1657
    :try_start_17
    monitor-enter v26
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1659
    :try_start_18
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    const-wide/16 v71, 0x1

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 1660
    monitor-exit v26
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 1663
    :cond_20
    :try_start_19
    const-string v3, "httpMonitorWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_21

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_FILENOTFOUND_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1672
    :cond_21
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1674
    const-string v3, "api Exception..."

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, 0x194

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1797
    if-eqz v10, :cond_22

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_22
    if-eqz v11, :cond_23

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_23
    if-eqz v12, :cond_24

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_25

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_28

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_26

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_26
    if-eqz v24, :cond_27

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_27
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_28
    if-eqz v29, :cond_29

    .line 1842
    :try_start_1a
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2f

    .line 1848
    .end local v32           #e:Ljava/io/FileNotFoundException;
    :cond_29
    :goto_17
    if-eqz v64, :cond_2a

    .line 1851
    :try_start_1b
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_30

    .line 1857
    :cond_2a
    :goto_18
    if-eqz v24, :cond_2b

    .line 1860
    :try_start_1c
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_31

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_2b
    :goto_19
    if-eqz v38, :cond_2c

    .line 1870
    :try_start_1d
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_32

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_2c
    :goto_1a
    if-eqz v18, :cond_2d

    .line 1883
    :try_start_1e
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_33

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_2d
    :goto_1b
    if-eqz v20, :cond_2e

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2e
    move-object/from16 v3, v71

    :goto_1c
    return-object v3

    .line 1073
    .restart local v28       #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v36       #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v49       #proxy:Lorg/apache/http/HttpHost;
    .restart local v67       #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    .restart local v68       #url:Ljava/net/URL;
    :cond_2f
    :try_start_1f
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/io/EOFException; {:try_start_1f .. :try_end_1f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e

    goto/16 :goto_e

    .line 1677
    .end local v28           #defaultfactory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v36           #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v49           #proxy:Lorg/apache/http/HttpHost;
    .end local v67           #tunnelFactory:Landroid/taobao/apirequest/SSLTunnelSocketFactory;
    .end local v68           #url:Ljava/net/URL;
    :catch_6
    move-exception v32

    .line 1680
    .local v32, e:Ljavax/net/ssl/SSLHandshakeException;
    :goto_1d
    :try_start_20
    const-string v3, "httpMonitorWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSLHandshakeException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_30

    .line 1685
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_SSLHANDSHAKE_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1689
    :cond_30
    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->printStackTrace()V

    .line 1690
    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    move-result-object v57

    .line 1691
    .local v57, t:Ljava/lang/Throwable;
    if-eqz v57, :cond_e9

    .line 1695
    :try_start_21
    throw v57
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_21 .. :try_end_21} :catch_39
    .catch Ljava/security/cert/CertificateException; {:try_start_21 .. :try_end_21} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_45

    .line 1697
    :catch_7
    move-exception v58

    .line 1700
    .local v58, te:Ljava/security/cert/CertificateExpiredException;
    :try_start_22
    const-string v3, "Page_Cert"

    sget v6, Landroid/taobao/common/SDKConstants;->ID_PAGE_HTTPS_CERT_ERR:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "11,CertificateExpiredException:"

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1701
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, -0x7d7

    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1797
    if-eqz v10, :cond_31

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_31
    if-eqz v11, :cond_32

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_32
    if-eqz v12, :cond_33

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_34

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_37

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_35

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_35
    if-eqz v24, :cond_36

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_36
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_37
    if-eqz v29, :cond_38

    .line 1842
    :try_start_23
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_34

    .line 1848
    .end local v32           #e:Ljavax/net/ssl/SSLHandshakeException;
    :cond_38
    :goto_1e
    if-eqz v64, :cond_39

    .line 1851
    :try_start_24
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_35

    .line 1857
    :cond_39
    :goto_1f
    if-eqz v24, :cond_3a

    .line 1860
    :try_start_25
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_36

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_3a
    :goto_20
    if-eqz v38, :cond_3b

    .line 1870
    :try_start_26
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_37

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_3b
    :goto_21
    if-eqz v18, :cond_3c

    .line 1883
    :try_start_27
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_38

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_3c
    :goto_22
    if-eqz v20, :cond_3d

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3d
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1092
    .end local v57           #t:Ljava/lang/Throwable;
    .end local v58           #te:Ljava/security/cert/CertificateExpiredException;
    .restart local v68       #url:Ljava/net/URL;
    :cond_3e
    :try_start_28
    invoke-virtual/range {v68 .. v68}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    goto/16 :goto_f

    .line 1106
    :cond_3f
    const/16 v16, 0x0

    goto/16 :goto_10

    .line 1114
    .restart local v16       #bImageDownload:Z
    :cond_40
    sget-object v26, Landroid/taobao/apirequest/ApiConnector;->m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    goto/16 :goto_11

    .line 1126
    :cond_41
    const-string v3, "Connection"

    const-string v6, "close"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_28} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_28 .. :try_end_28} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_28 .. :try_end_28} :catch_6
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_28} :catch_8
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e

    goto/16 :goto_12

    .line 1739
    .end local v16           #bImageDownload:Z
    .end local v68           #url:Ljava/net/URL;
    :catch_8
    move-exception v32

    .line 1740
    .local v32, e:Ljava/io/EOFException;
    :goto_23
    :try_start_29
    const-string v3, "httpMonitorWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EOFException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_42

    .line 1745
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_EOF_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1746
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": EOF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1750
    :cond_42
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;

    const-string v6, "EOFException"

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v40

    invoke-direct {v3, v0, v6, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;IZ)V

    throw v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 1150
    .end local v32           #e:Ljava/io/EOFException;
    .restart local v16       #bImageDownload:Z
    .restart local v17       #bUseRange:Z
    .restart local v68       #url:Ljava/net/URL;
    :cond_43
    :try_start_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/taobao/apirequest/ApiConnector;->cancelled:Z

    if-eqz v3, :cond_51

    .line 1151
    sget-object v71, Landroid/taobao/apirequest/ApiResult;->Cancelled:Landroid/taobao/apirequest/ApiResult;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_2a .. :try_end_2a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2a .. :try_end_2a} :catch_6
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_2a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_e

    .line 1797
    if-eqz v10, :cond_44

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_44
    if-eqz v11, :cond_45

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_45
    if-eqz v12, :cond_46

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_47

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_4a

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_48

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_48
    if-eqz v24, :cond_49

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_49
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_4a
    if-eqz v29, :cond_4b

    .line 1842
    :try_start_2b
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_9

    .line 1848
    :cond_4b
    :goto_24
    if-eqz v64, :cond_4c

    .line 1851
    :try_start_2c
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_a

    .line 1857
    :cond_4c
    :goto_25
    if-eqz v24, :cond_4d

    .line 1860
    :try_start_2d
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_b

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_4d
    :goto_26
    if-eqz v38, :cond_4e

    .line 1870
    :try_start_2e
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_c

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_4e
    :goto_27
    if-eqz v18, :cond_4f

    .line 1883
    :try_start_2f
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_d

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_4f
    :goto_28
    if-eqz v20, :cond_50

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_50
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    :catch_9
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_a
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_b
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_c
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_d
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 1154
    .end local v32           #e:Ljava/io/IOException;
    :cond_51
    const/4 v3, 0x0

    :try_start_30
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v60

    move-wide/from16 v62, v60

    .line 1157
    const-string v3, "conn_stat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before conn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    if-eqz v52, :cond_5a

    .line 1163
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1164
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1165
    const-string v3, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1170
    sget-object v10, Landroid/taobao/apirequest/ApiConnector;->connect_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1171
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_52

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->connect_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    .line 1175
    :cond_52
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1177
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->connect()V

    .line 1179
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1180
    const/4 v10, 0x0

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_53

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    .line 1187
    :cond_53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v60

    .line 1189
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v47

    .line 1190
    .local v47, os:Ljava/io/OutputStream;
    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1191
    invoke-virtual/range {v47 .. v47}, Ljava/io/OutputStream;->flush()V

    .line 1192
    invoke-virtual/range {v47 .. v47}, Ljava/io/OutputStream;->close()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_54

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    .line 1221
    .end local v47           #os:Ljava/io/OutputStream;
    :cond_54
    :goto_29
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1222
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    monitor-enter v26
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_30 .. :try_end_30} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_30 .. :try_end_30} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_30 .. :try_end_30} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_30 .. :try_end_30} :catch_6
    .catch Ljava/io/EOFException; {:try_start_30 .. :try_end_30} :catch_8
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_e

    .line 1227
    :try_start_31
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    const-wide/16 v71, 0x1

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    .line 1228
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_conTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v71

    sub-long v71, v71, v60

    const-wide/32 v73, 0xf4240

    div-long v71, v71, v73

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_conTime:J

    .line 1229
    monitor-exit v26
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 1230
    :try_start_32
    const-string v3, "conn_stat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after conn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",m_conTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_conTime:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v60

    .line 1235
    sget-object v10, Landroid/taobao/apirequest/ApiConnector;->getreponsecode_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1236
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_55

    .line 1239
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->getreponsecode_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    .line 1243
    :cond_55
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->RESPONING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1245
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 1247
    const/4 v3, -0x1

    if-ne v4, v3, :cond_5c

    .line 1250
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;

    const-string v6, "response code -1"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;I)V

    throw v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_32 .. :try_end_32} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_32 .. :try_end_32} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_32 .. :try_end_32} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_32 .. :try_end_32} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_32 .. :try_end_32} :catch_6
    .catch Ljava/io/EOFException; {:try_start_32 .. :try_end_32} :catch_8
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_e

    .line 1753
    .end local v16           #bImageDownload:Z
    .end local v17           #bUseRange:Z
    .end local v68           #url:Ljava/net/URL;
    :catch_e
    move-exception v32

    .line 1756
    .local v32, e:Ljava/lang/Exception;
    :goto_2a
    :try_start_33
    const-string v3, "httpMonitorWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Excption!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    if-eqz v26, :cond_56

    .line 1759
    monitor-enter v26
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 1761
    :try_start_34
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    const-wide/16 v71, 0x1

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 1762
    monitor-exit v26
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_e

    .line 1767
    :cond_56
    :try_start_35
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_57

    .line 1768
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget v6, Landroid/taobao/common/SDKConstants;->CODE_OTHER_EXCEPTION:I

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 1769
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 1772
    :cond_57
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiRequestMgr;->onTimeout()V

    .line 1775
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    .line 1778
    const-string v3, "api Exception..."

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    if-eqz v18, :cond_58

    .line 1782
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1784
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    if-eqz v3, :cond_59

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1791
    :cond_59
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "host:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-direct {v3, v0, v6, v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;I)V

    throw v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 1201
    .end local v32           #e:Ljava/lang/Exception;
    .restart local v16       #bImageDownload:Z
    .restart local v17       #bUseRange:Z
    .restart local v68       #url:Ljava/net/URL;
    :cond_5a
    :try_start_36
    sget-object v10, Landroid/taobao/apirequest/ApiConnector;->connect_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1202
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_5b

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->connect_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    .line 1207
    :cond_5b
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1209
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->connect()V

    .line 1211
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1212
    const/4 v10, 0x0

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_54

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_36 .. :try_end_36} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_36 .. :try_end_36} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_36} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_36 .. :try_end_36} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_36 .. :try_end_36} :catch_6
    .catch Ljava/io/EOFException; {:try_start_36 .. :try_end_36} :catch_8
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_e

    goto/16 :goto_29

    .line 1229
    :catchall_1
    move-exception v3

    :try_start_37
    monitor-exit v26
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    :try_start_38
    throw v3

    .line 1254
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_5d

    .line 1255
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    .line 1257
    :cond_5d
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1258
    const/4 v10, 0x0

    .line 1259
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->RESPONED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1260
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApiRequest responseCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0x3b9aca00

    div-long v6, v6, v71

    invoke-virtual {v3, v6, v7}, Landroid/taobao/apirequest/ApiRequestMgr;->onConnectSucc(J)V

    .line 1265
    const/16 v3, 0x1a0

    if-ne v3, v4, :cond_6b

    .line 1268
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, 0x1a0

    const-string v6, "bad range"

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_38 .. :try_end_38} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_38 .. :try_end_38} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_38} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_38 .. :try_end_38} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_38 .. :try_end_38} :catch_6
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_38} :catch_8
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_e

    .line 1797
    if-eqz v10, :cond_5e

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_5e
    if-eqz v11, :cond_5f

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_5f
    if-eqz v12, :cond_60

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_61

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_64

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_62

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_62
    if-eqz v24, :cond_63

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_63
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_64
    if-eqz v29, :cond_65

    .line 1842
    :try_start_39
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_f

    .line 1848
    :cond_65
    :goto_2b
    if-eqz v64, :cond_66

    .line 1851
    :try_start_3a
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_10

    .line 1857
    :cond_66
    :goto_2c
    if-eqz v24, :cond_67

    .line 1860
    :try_start_3b
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_11

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_67
    :goto_2d
    if-eqz v38, :cond_68

    .line 1870
    :try_start_3c
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_12

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_68
    :goto_2e
    if-eqz v18, :cond_69

    .line 1883
    :try_start_3d
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_13

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_69
    :goto_2f
    if-eqz v20, :cond_6a

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6a
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    :catch_f
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_10
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_11
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_12
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_13
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 1272
    .end local v32           #e:Ljava/io/IOException;
    :cond_6b
    const/16 v3, 0x193

    if-ne v3, v4, :cond_79

    .line 1274
    :try_start_3e
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, 0x193

    const-string v6, "forbiden"

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_3e .. :try_end_3e} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_3e .. :try_end_3e} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3e .. :try_end_3e} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_3e .. :try_end_3e} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_3e} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3e .. :try_end_3e} :catch_6
    .catch Ljava/io/EOFException; {:try_start_3e .. :try_end_3e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_e

    .line 1797
    if-eqz v10, :cond_6c

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_6c
    if-eqz v11, :cond_6d

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_6d
    if-eqz v12, :cond_6e

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_6f

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_72

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_70

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_70
    if-eqz v24, :cond_71

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_71
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_72
    if-eqz v29, :cond_73

    .line 1842
    :try_start_3f
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_14

    .line 1848
    :cond_73
    :goto_30
    if-eqz v64, :cond_74

    .line 1851
    :try_start_40
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_15

    .line 1857
    :cond_74
    :goto_31
    if-eqz v24, :cond_75

    .line 1860
    :try_start_41
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_16

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_75
    :goto_32
    if-eqz v38, :cond_76

    .line 1870
    :try_start_42
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_17

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_76
    :goto_33
    if-eqz v18, :cond_77

    .line 1883
    :try_start_43
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_18

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_77
    :goto_34
    if-eqz v20, :cond_78

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_78
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    :catch_14
    move-exception v32

    .line 1844
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_15
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_16
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_17
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_18
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 1279
    .end local v32           #e:Ljava/io/IOException;
    :cond_79
    const/16 v3, 0x12c

    if-lt v4, v3, :cond_8c

    const/16 v3, 0x190

    if-ge v4, v3, :cond_8c

    const/16 v3, 0x130

    if-eq v4, v3, :cond_8c

    :try_start_44
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-boolean v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_redirectAuto:Z

    if-eqz v3, :cond_8c

    .line 1282
    move-object/from16 v0, p0

    iget v3, v0, Landroid/taobao/apirequest/ApiConnector;->redirectTime:I

    const/4 v6, 0x5

    if-le v3, v6, :cond_7a

    .line 1283
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$RedirectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/taobao/apirequest/ApiConnector;->redirectTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Landroid/taobao/apirequest/ApiConnector$RedirectException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;)V

    throw v3

    .line 1285
    :cond_7a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/taobao/apirequest/ApiConnector;->redirectTime:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/taobao/apirequest/ApiConnector;->redirectTime:I

    .line 1287
    const-string v3, "location"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1288
    .local v51, redirectUrl:Ljava/lang/String;
    if-eqz v51, :cond_8c

    .line 1292
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 1293
    new-instance v3, Ljava/net/URL;

    const-string v6, "http"

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v3, v6, v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1295
    :cond_7b
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_redirectHandler:Landroid/taobao/apirequest/ConnRedirectHandler;

    if-eqz v3, :cond_7c

    .line 1298
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_redirectHandler:Landroid/taobao/apirequest/ConnRedirectHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    move-object/from16 v0, v51

    invoke-interface {v3, v6, v0, v7}, Landroid/taobao/apirequest/ConnRedirectHandler;->decideRecirect(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/String;

    move-result-object v51

    .line 1301
    :cond_7c
    if-eqz v51, :cond_7d

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7e

    .line 1304
    :cond_7d
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$RedirectException;

    const-string v6, "user stop redirect"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Landroid/taobao/apirequest/ApiConnector$RedirectException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;)V

    throw v3

    .line 1308
    :cond_7e
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    .line 1309
    invoke-direct/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->dataConnect()Landroid/taobao/apirequest/ApiResult;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_44 .. :try_end_44} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_44 .. :try_end_44} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_44 .. :try_end_44} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_44 .. :try_end_44} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_44} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_44 .. :try_end_44} :catch_6
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_44} :catch_8
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_e

    move-result-object v71

    .line 1797
    if-eqz v10, :cond_7f

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_7f
    if-eqz v11, :cond_80

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_80
    if-eqz v12, :cond_81

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_81
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_82

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_82
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_85

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_83

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_83
    if-eqz v24, :cond_84

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_84
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_85
    if-eqz v29, :cond_86

    .line 1842
    :try_start_45
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_19

    .line 1848
    :cond_86
    :goto_35
    if-eqz v64, :cond_87

    .line 1851
    :try_start_46
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_1a

    .line 1857
    :cond_87
    :goto_36
    if-eqz v24, :cond_88

    .line 1860
    :try_start_47
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_1b

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_88
    :goto_37
    if-eqz v38, :cond_89

    .line 1870
    :try_start_48
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_1c

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_89
    :goto_38
    if-eqz v18, :cond_8a

    .line 1883
    :try_start_49
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_1d

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_8a
    :goto_39
    if-eqz v20, :cond_8b

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8b
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    :catch_19
    move-exception v32

    .line 1844
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_1b
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_1c
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 1315
    .end local v32           #e:Ljava/io/IOException;
    .end local v51           #redirectUrl:Ljava/lang/String;
    :cond_8c
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    if-eqz v3, :cond_8d

    .line 1317
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1318
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    const-string v6, "response-code"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    const/16 v37, 0x1

    .line 1322
    .local v37, i:I
    :goto_3a
    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v43

    .line 1323
    .local v43, key:Ljava/lang/String;
    if-nez v43, :cond_8f

    .line 1343
    .end local v37           #i:I
    .end local v43           #key:Ljava/lang/String;
    :cond_8d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_8e

    .line 1344
    const-string v3, "x-server-rt"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 1345
    .local v70, xServerTime:Ljava/lang/String;
    if-nez v70, :cond_91

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    .line 1356
    .end local v70           #xServerTime:Ljava/lang/String;
    :cond_8e
    :goto_3b
    const-string v3, "Connection"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1357
    .local v21, connectionProperty:Ljava/lang/String;
    const-string v3, "connection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const/16 v65, 0x0

    .line 1363
    .local v65, totalLen:I
    const-string v3, "content-length"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1364
    .local v22, contentLen:Ljava/lang/String;
    if-eqz v22, :cond_92

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_downMaxSize:I

    move/from16 v0, v65

    if-le v0, v3, :cond_92

    .line 1365
    new-instance v3, Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Content-Length is to large:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;)V

    throw v3

    .line 1326
    .end local v21           #connectionProperty:Ljava/lang/String;
    .end local v22           #contentLen:Ljava/lang/String;
    .end local v65           #totalLen:I
    .restart local v37       #i:I
    .restart local v43       #key:Ljava/lang/String;
    :cond_8f
    add-int/lit8 v37, v37, 0x1

    .line 1327
    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1328
    .local v69, value:Ljava/lang/String;
    const-string v3, "location"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1330
    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 1332
    new-instance v50, Ljava/net/URL;

    const-string v3, "http"

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    move-object/from16 v2, v69

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    .local v50, redirect:Ljava/net/URL;
    invoke-virtual/range {v50 .. v50}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v69

    .line 1336
    .end local v50           #redirect:Ljava/net/URL;
    :cond_90
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v69

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_4a .. :try_end_4a} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_4a .. :try_end_4a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4a .. :try_end_4a} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_4a .. :try_end_4a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4a} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4a .. :try_end_4a} :catch_6
    .catch Ljava/io/EOFException; {:try_start_4a .. :try_end_4a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_e

    goto/16 :goto_3a

    .line 1349
    .end local v37           #i:I
    .end local v43           #key:Ljava/lang/String;
    .end local v69           #value:Ljava/lang/String;
    .restart local v70       #xServerTime:Ljava/lang/String;
    :cond_91
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static/range {v70 .. v70}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_4b} :catch_1e
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_4b .. :try_end_4b} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_4b .. :try_end_4b} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4b .. :try_end_4b} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_4b .. :try_end_4b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_4b} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4b .. :try_end_4b} :catch_6
    .catch Ljava/io/EOFException; {:try_start_4b .. :try_end_4b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_e

    goto/16 :goto_3b

    .line 1350
    :catch_1e
    move-exception v32

    .line 1351
    .local v32, e:Ljava/lang/NumberFormatException;
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    goto/16 :goto_3b

    .line 1371
    .end local v32           #e:Ljava/lang/NumberFormatException;
    .end local v70           #xServerTime:Ljava/lang/String;
    .restart local v21       #connectionProperty:Ljava/lang/String;
    .restart local v22       #contentLen:Ljava/lang/String;
    .restart local v65       #totalLen:I
    :cond_92
    if-eqz v17, :cond_93

    .line 1373
    const-string v3, "content-range"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1374
    .local v23, contentRange:Ljava/lang/String;
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content_RANGE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with startpos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " content-lenght:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    .end local v23           #contentRange:Ljava/lang/String;
    :cond_93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v60

    .line 1387
    sget-object v10, Landroid/taobao/apirequest/ApiConnector;->getfirstdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1388
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_94

    .line 1390
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->getfirstdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    .line 1392
    :cond_94
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->FIRSTDATA_RECEIVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1394
    sget-object v11, Landroid/taobao/apirequest/ApiConnector;->getdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1395
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_95

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    sget-object v6, Landroid/taobao/apirequest/ApiConnector;->getdata_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    .line 1400
    :cond_95
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v64

    .line 1402
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ad

    const-string v3, "gzip"

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ad

    .line 1405
    new-instance v25, Landroid/taobao/apirequest/CounterInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/CounterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_4c .. :try_end_4c} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_4c .. :try_end_4c} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4c .. :try_end_4c} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_4c .. :try_end_4c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_4c} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4c .. :try_end_4c} :catch_6
    .catch Ljava/io/EOFException; {:try_start_4c .. :try_end_4c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_e

    .line 1406
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .local v25, cs:Landroid/taobao/apirequest/CounterInputStream;
    :try_start_4d
    new-instance v39, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_f
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_4d .. :try_end_4d} :catch_5f
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_4d .. :try_end_4d} :catch_5d
    .catch Ljava/net/SocketTimeoutException; {:try_start_4d .. :try_end_4d} :catch_5b
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_4d .. :try_end_4d} :catch_59
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_4d} :catch_57
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4d .. :try_end_4d} :catch_55
    .catch Ljava/io/EOFException; {:try_start_4d .. :try_end_4d} :catch_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_51

    .line 1407
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .local v39, is:Ljava/util/zip/GZIPInputStream;
    :try_start_4e
    new-instance v30, Ljava/io/DataInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_10
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_4e .. :try_end_4e} :catch_60
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_4e .. :try_end_4e} :catch_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_4e .. :try_end_4e} :catch_5c
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_4e .. :try_end_4e} :catch_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_4e} :catch_58
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4e .. :try_end_4e} :catch_56
    .catch Ljava/io/EOFException; {:try_start_4e .. :try_end_4e} :catch_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_52

    .end local v29           #dis:Ljava/io/DataInputStream;
    .local v30, dis:Ljava/io/DataInputStream;
    move-object/from16 v29, v30

    .end local v30           #dis:Ljava/io/DataInputStream;
    .restart local v29       #dis:Ljava/io/DataInputStream;
    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .line 1415
    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    :goto_3c
    const/16 v37, 0x0

    .line 1416
    .restart local v37       #i:I
    const/16 v3, 0x800

    :try_start_4f
    new-array v14, v3, [B

    .line 1417
    .local v14, b:[B
    const/16 v47, 0x0

    .line 1418
    .restart local v47       #os:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_ae

    .line 1420
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v0, v3, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    move-object/from16 v47, v0

    .line 1427
    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_ProgressStep:I

    div-int v46, v65, v3

    .line 1428
    .local v46, notifystep:I
    move/from16 v45, v46

    .line 1430
    .local v45, notifypos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v6, v3, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    long-to-int v0, v6

    move/from16 v54, v0

    .line 1433
    .local v54, startPos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v3, :cond_96

    .line 1435
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before call onProgress startPos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    long-to-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    const-string v6, "\u4e0b\u8f7d\u4e2d"

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    long-to-int v7, v0

    add-int v71, v54, v65

    move/from16 v0, v71

    invoke-interface {v3, v6, v7, v0}, Landroid/taobao/apirequest/AsyncDataListener;->onProgress(Ljava/lang/String;II)V

    .line 1439
    :cond_96
    const/4 v15, 0x1

    .line 1441
    .local v15, bFirstResponse:Z
    :cond_97
    const/4 v3, 0x0

    const/16 v6, 0x800

    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v3, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v37

    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_be

    .line 1444
    monitor-enter v26
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_4f .. :try_end_4f} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_4f .. :try_end_4f} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4f .. :try_end_4f} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_4f .. :try_end_4f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_4f} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4f .. :try_end_4f} :catch_6
    .catch Ljava/io/EOFException; {:try_start_4f .. :try_end_4f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_e

    .line 1446
    :try_start_50
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalSize:J

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v71, v0

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalSize:J

    .line 1447
    monitor-exit v26
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_2

    .line 1448
    :try_start_51
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_98

    .line 1449
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iget-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v71, v0

    add-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    .line 1452
    :cond_98
    if-eqz v15, :cond_9a

    .line 1454
    const-string v3, "conn_stat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first read:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",m_firstData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_firstData:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    monitor-enter v26
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_51 .. :try_end_51} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_51 .. :try_end_51} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_51 .. :try_end_51} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_51 .. :try_end_51} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_51} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_51 .. :try_end_51} :catch_6
    .catch Ljava/io/EOFException; {:try_start_51 .. :try_end_51} :catch_8
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_e

    .line 1457
    :try_start_52
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_firstData:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v71

    sub-long v71, v71, v60

    const-wide/32 v73, 0xf4240

    div-long v71, v71, v73

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_firstData:J

    .line 1458
    monitor-exit v26
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_3

    .line 1460
    :try_start_53
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_99

    .line 1461
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    .line 1463
    :cond_99
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1464
    const/4 v10, 0x0

    .line 1465
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->FIRSTDATA_RECEIVED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1467
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->DATA_RECEVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1468
    const/4 v15, 0x0

    .line 1471
    :cond_9a
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reading:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_53 .. :try_end_53} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_53 .. :try_end_53} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_53 .. :try_end_53} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_53 .. :try_end_53} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_53} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_53 .. :try_end_53} :catch_6
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_53} :catch_8
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_e

    .line 1474
    const/4 v3, 0x0

    :try_start_54
    move-object/from16 v0, v47

    move/from16 v1, v37

    invoke-virtual {v0, v14, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_1f
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_54 .. :try_end_54} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_54 .. :try_end_54} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_54 .. :try_end_54} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_54 .. :try_end_54} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_54} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_54 .. :try_end_54} :catch_6
    .catch Ljava/io/EOFException; {:try_start_54 .. :try_end_54} :catch_8
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_e

    if-eqz v3, :cond_9b

    .line 1481
    const-wide/16 v6, 0x5

    :try_start_55
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_50
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_1f
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_55 .. :try_end_55} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_55 .. :try_end_55} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_55 .. :try_end_55} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_55 .. :try_end_55} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_55} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_55 .. :try_end_55} :catch_6
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_55} :catch_8

    .line 1509
    :cond_9b
    :goto_3e
    :try_start_56
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v6, v3, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v71, v0

    add-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v3, :cond_9c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v6, v3, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v71, v0

    cmp-long v3, v6, v71

    if-lez v3, :cond_9c

    .line 1513
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before call onProgress startPos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    long-to-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    const-string v6, "\u4e0b\u8f7d\u4e2d"

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-wide v0, v7, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    long-to-int v7, v0

    add-int v71, v54, v65

    move/from16 v0, v71

    invoke-interface {v3, v6, v7, v0}, Landroid/taobao/apirequest/AsyncDataListener;->onProgress(Ljava/lang/String;II)V

    .line 1515
    add-int v45, v45, v46

    .line 1521
    :cond_9c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/taobao/apirequest/ApiConnector;->cancelled:Z

    if-eqz v3, :cond_9d

    .line 1523
    const-string v3, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!canceled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  out:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v7, v7, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_9d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/taobao/apirequest/ApiConnector;->cancelled:Z

    if-eqz v3, :cond_97

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_97

    .line 1527
    monitor-enter v26
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_56 .. :try_end_56} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_56 .. :try_end_56} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_56 .. :try_end_56} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_56 .. :try_end_56} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_56} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_56 .. :try_end_56} :catch_6
    .catch Ljava/io/EOFException; {:try_start_56 .. :try_end_56} :catch_8
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_e

    .line 1529
    :try_start_57
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v71

    sub-long v71, v71, v60

    const-wide/32 v73, 0xf4240

    div-long v71, v71, v73

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    .line 1530
    monitor-exit v26
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_6

    .line 1532
    :try_start_58
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_9e

    .line 1533
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 1535
    :cond_9e
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1536
    const/4 v11, 0x0

    .line 1537
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->DATA_CANCEL:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1538
    if-eqz v13, :cond_9f

    .line 1539
    monitor-enter v13
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_58 .. :try_end_58} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_58 .. :try_end_58} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_58 .. :try_end_58} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_58 .. :try_end_58} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_58} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_58 .. :try_end_58} :catch_6
    .catch Ljava/io/EOFException; {:try_start_58 .. :try_end_58} :catch_8
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_e

    .line 1541
    :try_start_59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v62

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v6, v7}, Landroid/taobao/apirequest/ApiConnector;->logTopAPI(Ljava/lang/String;Landroid/taobao/apirequest/ApiConnector$APIStat;J)V

    .line 1542
    monitor-exit v13
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_7

    .line 1545
    :cond_9f
    :try_start_5a
    const-string v3, "conn_stat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after read all:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",m_totalCost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    sget-object v71, Landroid/taobao/apirequest/ApiResult;->Cancelled:Landroid/taobao/apirequest/ApiResult;
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_5a .. :try_end_5a} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_5a .. :try_end_5a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5a .. :try_end_5a} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_5a .. :try_end_5a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5a} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5a .. :try_end_5a} :catch_6
    .catch Ljava/io/EOFException; {:try_start_5a .. :try_end_5a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_e

    .line 1797
    if-eqz v10, :cond_a0

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_a0
    if-eqz v11, :cond_a1

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_a1
    if-eqz v12, :cond_a2

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_a2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_a3

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_a3
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_a6

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_a4

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_a4
    if-eqz v24, :cond_a5

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_a5
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_a6
    if-eqz v29, :cond_a7

    .line 1842
    :try_start_5b
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5b} :catch_25

    .line 1848
    :cond_a7
    :goto_3f
    if-eqz v64, :cond_a8

    .line 1851
    :try_start_5c
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_26

    .line 1857
    :cond_a8
    :goto_40
    if-eqz v24, :cond_a9

    .line 1860
    :try_start_5d
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5d} :catch_27

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_a9
    :goto_41
    if-eqz v38, :cond_aa

    .line 1870
    :try_start_5e
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_28

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_aa
    :goto_42
    if-eqz v18, :cond_ab

    .line 1883
    :try_start_5f
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_5f} :catch_29

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_ab
    :goto_43
    if-eqz v20, :cond_ac

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ac
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1411
    .end local v14           #b:[B
    .end local v15           #bFirstResponse:Z
    .end local v37           #i:I
    .end local v45           #notifypos:I
    .end local v46           #notifystep:I
    .end local v47           #os:Ljava/io/OutputStream;
    .end local v54           #startPos:I
    :cond_ad
    :try_start_60
    new-instance v30, Ljava/io/DataInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v29           #dis:Ljava/io/DataInputStream;
    .restart local v30       #dis:Ljava/io/DataInputStream;
    move-object/from16 v29, v30

    .end local v30           #dis:Ljava/io/DataInputStream;
    .restart local v29       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_3c

    .line 1424
    .restart local v14       #b:[B
    .restart local v37       #i:I
    .restart local v47       #os:Ljava/io/OutputStream;
    :cond_ae
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_60 .. :try_end_60} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_60 .. :try_end_60} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_60 .. :try_end_60} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_60 .. :try_end_60} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_60} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_60 .. :try_end_60} :catch_6
    .catch Ljava/io/EOFException; {:try_start_60 .. :try_end_60} :catch_8
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_e

    .end local v18           #bs:Ljava/io/ByteArrayOutputStream;
    .local v19, bs:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v47, v19

    move-object/from16 v18, v19

    .end local v19           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #bs:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3d

    .line 1447
    .restart local v15       #bFirstResponse:Z
    .restart local v45       #notifypos:I
    .restart local v46       #notifystep:I
    .restart local v54       #startPos:I
    :catchall_2
    move-exception v3

    :try_start_61
    monitor-exit v26
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2

    :try_start_62
    throw v3
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_62 .. :try_end_62} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_62 .. :try_end_62} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_62 .. :try_end_62} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_62 .. :try_end_62} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_62} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_62 .. :try_end_62} :catch_6
    .catch Ljava/io/EOFException; {:try_start_62 .. :try_end_62} :catch_8
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_e

    .line 1458
    :catchall_3
    move-exception v3

    :try_start_63
    monitor-exit v26
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_3

    :try_start_64
    throw v3

    .line 1488
    :catch_1f
    move-exception v32

    .line 1490
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    .line 1491
    monitor-enter v26
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_64 .. :try_end_64} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_64 .. :try_end_64} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_64 .. :try_end_64} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_64 .. :try_end_64} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_64} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_64 .. :try_end_64} :catch_6
    .catch Ljava/io/EOFException; {:try_start_64 .. :try_end_64} :catch_8
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_e

    .line 1493
    :try_start_65
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v71

    sub-long v71, v71, v60

    const-wide/32 v73, 0xf4240

    div-long v71, v71, v73

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    .line 1494
    monitor-exit v26
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_4

    .line 1496
    :try_start_66
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_af

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 1499
    :cond_af
    if-eqz v13, :cond_b0

    .line 1500
    monitor-enter v13
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_66 .. :try_end_66} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_66 .. :try_end_66} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_66 .. :try_end_66} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_66 .. :try_end_66} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_66} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_66 .. :try_end_66} :catch_6
    .catch Ljava/io/EOFException; {:try_start_66 .. :try_end_66} :catch_8
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_e

    .line 1502
    :try_start_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v62

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v6, v7}, Landroid/taobao/apirequest/ApiConnector;->logTopAPI(Ljava/lang/String;Landroid/taobao/apirequest/ApiConnector$APIStat;J)V

    .line 1503
    monitor-exit v13
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_5

    .line 1506
    :cond_b0
    :try_start_68
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/4 v3, -0x7

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_68 .. :try_end_68} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_68 .. :try_end_68} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_68 .. :try_end_68} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_68 .. :try_end_68} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_68} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_68 .. :try_end_68} :catch_6
    .catch Ljava/io/EOFException; {:try_start_68 .. :try_end_68} :catch_8
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_e

    .line 1797
    if-eqz v10, :cond_b1

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_b1
    if-eqz v11, :cond_b2

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_b2
    if-eqz v12, :cond_b3

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_b3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_b4

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_b7

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_b5

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_b5
    if-eqz v24, :cond_b6

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_b6
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_b7
    if-eqz v29, :cond_b8

    .line 1842
    :try_start_69
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_69} :catch_20

    .line 1848
    :cond_b8
    :goto_44
    if-eqz v64, :cond_b9

    .line 1851
    :try_start_6a
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6a} :catch_21

    .line 1857
    :cond_b9
    :goto_45
    if-eqz v24, :cond_ba

    .line 1860
    :try_start_6b
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6b} :catch_22

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_ba
    :goto_46
    if-eqz v38, :cond_bb

    .line 1870
    :try_start_6c
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6c} :catch_23

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_bb
    :goto_47
    if-eqz v18, :cond_bc

    .line 1883
    :try_start_6d
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6d} :catch_24

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_bc
    :goto_48
    if-eqz v20, :cond_bd

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_bd
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1494
    :catchall_4
    move-exception v3

    :try_start_6e
    monitor-exit v26
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_4

    :try_start_6f
    throw v3
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_6f .. :try_end_6f} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_6f .. :try_end_6f} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6f .. :try_end_6f} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_6f .. :try_end_6f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_6f} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6f .. :try_end_6f} :catch_6
    .catch Ljava/io/EOFException; {:try_start_6f .. :try_end_6f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_e

    .line 1503
    :catchall_5
    move-exception v3

    :try_start_70
    monitor-exit v13
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_5

    :try_start_71
    throw v3
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_71 .. :try_end_71} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_71 .. :try_end_71} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_71 .. :try_end_71} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_71 .. :try_end_71} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_71} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_71 .. :try_end_71} :catch_6
    .catch Ljava/io/EOFException; {:try_start_71 .. :try_end_71} :catch_8
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_e

    .line 1843
    :catch_20
    move-exception v32

    .line 1844
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 1852
    :catch_21
    move-exception v32

    .line 1853
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 1862
    :catch_22
    move-exception v32

    .line 1864
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 1872
    :catch_23
    move-exception v32

    .line 1874
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 1886
    :catch_24
    move-exception v32

    .line 1888
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 1530
    .end local v32           #e:Ljava/io/IOException;
    :catchall_6
    move-exception v3

    :try_start_72
    monitor-exit v26
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_6

    :try_start_73
    throw v3
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_73 .. :try_end_73} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_73 .. :try_end_73} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_73 .. :try_end_73} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_73 .. :try_end_73} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_73} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_73 .. :try_end_73} :catch_6
    .catch Ljava/io/EOFException; {:try_start_73 .. :try_end_73} :catch_8
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_e

    .line 1542
    :catchall_7
    move-exception v3

    :try_start_74
    monitor-exit v13
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_7

    :try_start_75
    throw v3
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_75 .. :try_end_75} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_75 .. :try_end_75} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_75 .. :try_end_75} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_75 .. :try_end_75} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_75} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_75 .. :try_end_75} :catch_6
    .catch Ljava/io/EOFException; {:try_start_75 .. :try_end_75} :catch_8
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_e

    .line 1843
    :catch_25
    move-exception v32

    .line 1844
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3f

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_26
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_40

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_27
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_41

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_28
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_42

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_29
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_43

    .line 1552
    .end local v32           #e:Ljava/io/IOException;
    :cond_be
    :try_start_76
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    if-nez v3, :cond_ce

    .line 1554
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v27

    .line 1561
    :goto_49
    monitor-enter v26
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_76 .. :try_end_76} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_76 .. :try_end_76} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_76 .. :try_end_76} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_76 .. :try_end_76} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_76} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_76 .. :try_end_76} :catch_6
    .catch Ljava/io/EOFException; {:try_start_76 .. :try_end_76} :catch_8
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_e

    .line 1563
    :try_start_77
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v71

    sub-long v71, v71, v60

    const-wide/32 v73, 0xf4240

    div-long v71, v71, v73

    add-long v6, v6, v71

    move-object/from16 v0, v26

    iput-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    .line 1564
    monitor-exit v26
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_8

    .line 1566
    :try_start_78
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_bf

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v60

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 1570
    :cond_bf
    if-eqz v13, :cond_c0

    .line 1571
    monitor-enter v13
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_78 .. :try_end_78} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_78 .. :try_end_78} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_78 .. :try_end_78} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_78 .. :try_end_78} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_78} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_78 .. :try_end_78} :catch_6
    .catch Ljava/io/EOFException; {:try_start_78 .. :try_end_78} :catch_8
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_e

    .line 1573
    :try_start_79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v62

    const-wide/32 v71, 0xf4240

    div-long v6, v6, v71

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v6, v7}, Landroid/taobao/apirequest/ApiConnector;->logTopAPI(Ljava/lang/String;Landroid/taobao/apirequest/ApiConnector$APIStat;J)V

    .line 1574
    monitor-exit v13
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_9

    .line 1576
    :cond_c0
    :try_start_7a
    const-string v3, "conn_stat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after read all:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",m_totalCost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    move-wide/from16 v71, v0

    move-wide/from16 v0, v71

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1579
    const/4 v11, 0x0

    .line 1580
    sget-object v9, Landroid/taobao/apirequest/ApiConnector$ConnState;->FINISED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1582
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, 0xc8

    const-string v6, "success"

    move-object/from16 v0, v71

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v6, v1}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_7a .. :try_end_7a} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_7a .. :try_end_7a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7a .. :try_end_7a} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_7a .. :try_end_7a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7a} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7a .. :try_end_7a} :catch_6
    .catch Ljava/io/EOFException; {:try_start_7a .. :try_end_7a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_e

    .line 1797
    if-eqz v10, :cond_c1

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_c1
    if-eqz v11, :cond_c2

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_c2
    if-eqz v12, :cond_c3

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_c3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_c4

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_c7

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_c5

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_c5
    if-eqz v24, :cond_c6

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_c6
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_c7
    if-eqz v29, :cond_c8

    .line 1842
    :try_start_7b
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7b} :catch_2a

    .line 1848
    :cond_c8
    :goto_4a
    if-eqz v64, :cond_c9

    .line 1851
    :try_start_7c
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7c} :catch_2b

    .line 1857
    :cond_c9
    :goto_4b
    if-eqz v24, :cond_ca

    .line 1860
    :try_start_7d
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7d} :catch_2c

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_ca
    :goto_4c
    if-eqz v38, :cond_cb

    .line 1870
    :try_start_7e
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_7e} :catch_2d

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_cb
    :goto_4d
    if-eqz v18, :cond_cc

    .line 1883
    :try_start_7f
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_7f} :catch_2e

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_cc
    :goto_4e
    if-eqz v20, :cond_cd

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_cd
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1558
    :cond_ce
    const/16 v27, 0x0

    goto/16 :goto_49

    .line 1564
    :catchall_8
    move-exception v3

    :try_start_80
    monitor-exit v26
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_8

    :try_start_81
    throw v3
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_81 .. :try_end_81} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_81 .. :try_end_81} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_81 .. :try_end_81} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_81 .. :try_end_81} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_81} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_81 .. :try_end_81} :catch_6
    .catch Ljava/io/EOFException; {:try_start_81 .. :try_end_81} :catch_8
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_e

    .line 1574
    :catchall_9
    move-exception v3

    :try_start_82
    monitor-exit v13
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_9

    :try_start_83
    throw v3
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_0
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_83 .. :try_end_83} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_83 .. :try_end_83} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_83 .. :try_end_83} :catch_2
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_83 .. :try_end_83} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_83} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_83 .. :try_end_83} :catch_6
    .catch Ljava/io/EOFException; {:try_start_83 .. :try_end_83} :catch_8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_e

    .line 1843
    :catch_2a
    move-exception v32

    .line 1844
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_2b
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_2c
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_2d
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_2e
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 1592
    .end local v14           #b:[B
    .end local v15           #bFirstResponse:Z
    .end local v16           #bImageDownload:Z
    .end local v17           #bUseRange:Z
    .end local v21           #connectionProperty:Ljava/lang/String;
    .end local v22           #contentLen:Ljava/lang/String;
    .end local v37           #i:I
    .end local v45           #notifypos:I
    .end local v46           #notifystep:I
    .end local v47           #os:Ljava/io/OutputStream;
    .end local v54           #startPos:I
    .end local v65           #totalLen:I
    .end local v68           #url:Ljava/net/URL;
    .local v32, e:Landroid/taobao/apirequest/ApiConnector$RedirectException;
    :catchall_a
    move-exception v3

    :try_start_84
    monitor-exit v26
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_a

    :try_start_85
    throw v3
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_0

    .line 1610
    .local v32, e:Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;
    :catchall_b
    move-exception v3

    :try_start_86
    monitor-exit v26
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_b

    :try_start_87
    throw v3
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_0

    .line 1628
    .local v32, e:Ljava/net/SocketTimeoutException;
    :catchall_c
    move-exception v3

    :try_start_88
    monitor-exit v26
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_c

    :try_start_89
    throw v3
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_0

    .line 1660
    .local v32, e:Ljava/io/FileNotFoundException;
    :catchall_d
    move-exception v3

    :try_start_8a
    monitor-exit v26
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_d

    :try_start_8b
    throw v3
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_0

    .line 1843
    :catch_2f
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_30
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_18

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_31
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_32
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_33
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b

    .line 1843
    .local v32, e:Ljavax/net/ssl/SSLHandshakeException;
    .restart local v57       #t:Ljava/lang/Throwable;
    .restart local v58       #te:Ljava/security/cert/CertificateExpiredException;
    :catch_34
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1e

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_35
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_36
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_20

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_37
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_21

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_38
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_22

    .line 1703
    .end local v58           #te:Ljava/security/cert/CertificateExpiredException;
    .local v32, e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_39
    move-exception v58

    .line 1706
    .local v58, te:Ljava/security/cert/CertificateNotYetValidException;
    :try_start_8c
    const-string v3, "Page_Cert"

    sget v6, Landroid/taobao/common/SDKConstants;->ID_PAGE_HTTPS_CERT_ERR:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "12,CertificateNotYetValidException"

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1707
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, -0x7d7

    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_0

    .line 1797
    if-eqz v10, :cond_cf

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_cf
    if-eqz v11, :cond_d0

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_d0
    if-eqz v12, :cond_d1

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_d1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_d2

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_d2
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_d5

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_d3

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_d3
    if-eqz v24, :cond_d4

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_d4
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_d5
    if-eqz v29, :cond_d6

    .line 1842
    :try_start_8d
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_8d} :catch_3a

    .line 1848
    .end local v32           #e:Ljavax/net/ssl/SSLHandshakeException;
    :cond_d6
    :goto_4f
    if-eqz v64, :cond_d7

    .line 1851
    :try_start_8e
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_8e} :catch_3b

    .line 1857
    :cond_d7
    :goto_50
    if-eqz v24, :cond_d8

    .line 1860
    :try_start_8f
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_8f} :catch_3c

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_d8
    :goto_51
    if-eqz v38, :cond_d9

    .line 1870
    :try_start_90
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_90} :catch_3d

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_d9
    :goto_52
    if-eqz v18, :cond_da

    .line 1883
    :try_start_91
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_91} :catch_3e

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_da
    :goto_53
    if-eqz v20, :cond_db

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_db
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    .restart local v32       #e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_3a
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_3b
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_3d
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_3e
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .line 1709
    .end local v58           #te:Ljava/security/cert/CertificateNotYetValidException;
    .local v32, e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_3f
    move-exception v58

    .line 1712
    .local v58, te:Ljava/security/cert/CertificateException;
    :try_start_92
    invoke-virtual/range {v58 .. v58}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v44

    .line 1713
    .local v44, msg:Ljava/lang/String;
    const-string v3, "Page_Cert"

    sget v6, Landroid/taobao/common/SDKConstants;->ID_PAGE_HTTPS_CERT_ERR:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "13,CertificateException:"

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v58 .. v58}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1714
    const-string v3, "current time"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e9

    const-string v3, "validation time"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 1715
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, -0x7d7

    invoke-virtual/range {v58 .. v58}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_0

    .line 1797
    if-eqz v10, :cond_dc

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_dc
    if-eqz v11, :cond_dd

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_dd
    if-eqz v12, :cond_de

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_de
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_df

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_df
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_e2

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_e0

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_e0
    if-eqz v24, :cond_e1

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_e1
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_e2
    if-eqz v29, :cond_e3

    .line 1842
    :try_start_93
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_93} :catch_40

    .line 1848
    .end local v32           #e:Ljavax/net/ssl/SSLHandshakeException;
    :cond_e3
    :goto_54
    if-eqz v64, :cond_e4

    .line 1851
    :try_start_94
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_94} :catch_41

    .line 1857
    :cond_e4
    :goto_55
    if-eqz v24, :cond_e5

    .line 1860
    :try_start_95
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_95} :catch_42

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_e5
    :goto_56
    if-eqz v38, :cond_e6

    .line 1870
    :try_start_96
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_96} :catch_43

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_e6
    :goto_57
    if-eqz v18, :cond_e7

    .line 1883
    :try_start_97
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_97} :catch_44

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_e7
    :goto_58
    if-eqz v20, :cond_e8

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e8
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    .restart local v32       #e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_40
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_41
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_42
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_43
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_44
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 1720
    .end local v44           #msg:Ljava/lang/String;
    .end local v58           #te:Ljava/security/cert/CertificateException;
    .local v32, e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_45
    move-exception v33

    .line 1723
    .local v33, e1:Ljava/lang/Throwable;
    :try_start_98
    const-string v3, "Page_Cert"

    sget v6, Landroid/taobao/common/SDKConstants;->ID_PAGE_HTTPS_CERT_ERR:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "14,CertificateException"

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1724
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1730
    .end local v33           #e1:Ljava/lang/Throwable;
    :cond_e9
    const-string v3, "api Exception..."

    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v3, "Page_Cert"

    sget v6, Landroid/taobao/common/SDKConstants;->ID_PAGE_HTTPS_CERT_ERR:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "15,ERR_HTTPS_CERT_INVALID"

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1735
    new-instance v71, Landroid/taobao/apirequest/ApiResult;

    const/16 v3, -0x7d6

    invoke-virtual/range {v32 .. v32}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-direct {v0, v3, v6, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_0

    .line 1797
    if-eqz v10, :cond_ea

    .line 1798
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1799
    const/4 v10, 0x0

    .line 1802
    :cond_ea
    if-eqz v11, :cond_eb

    .line 1803
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1804
    const/4 v11, 0x0

    .line 1807
    :cond_eb
    if-eqz v12, :cond_ec

    .line 1808
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1809
    const/4 v12, 0x0

    .line 1814
    :cond_ec
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v3, :cond_ed

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput-object v9, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v55

    const-wide/32 v72, 0xf4240

    div-long v6, v6, v72

    iput-wide v6, v3, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 1819
    :cond_ed
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleConnStat()V

    .line 1822
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    if-eqz v3, :cond_f0

    .line 1825
    const/4 v5, 0x0

    .line 1826
    .restart local v5       #readsize:I
    if-eqz v18, :cond_ee

    .line 1827
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 1829
    :cond_ee
    if-eqz v24, :cond_ef

    .line 1831
    move-object/from16 v0, v24

    iget v5, v0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 1832
    const-string v3, "Taobao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gzip len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_ef
    sget-object v3, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector;->requestStartTimestamp:J

    move-wide/from16 v72, v0

    sub-long v6, v6, v72

    invoke-interface/range {v3 .. v8}, Landroid/taobao/apirequest/ApiConnectorStatusListener;->onFinish(IIJLjava/lang/String;)V

    .line 1839
    .end local v5           #readsize:I
    :cond_f0
    if-eqz v29, :cond_f1

    .line 1842
    :try_start_99
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_99} :catch_46

    .line 1848
    .end local v32           #e:Ljavax/net/ssl/SSLHandshakeException;
    :cond_f1
    :goto_59
    if-eqz v64, :cond_f2

    .line 1851
    :try_start_9a
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9a} :catch_47

    .line 1857
    :cond_f2
    :goto_5a
    if-eqz v24, :cond_f3

    .line 1860
    :try_start_9b
    invoke-virtual/range {v24 .. v24}, Landroid/taobao/apirequest/CounterInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9b} :catch_48

    .line 1861
    const/16 v24, 0x0

    .line 1867
    :cond_f3
    :goto_5b
    if-eqz v38, :cond_f4

    .line 1870
    :try_start_9c
    invoke-virtual/range {v38 .. v38}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9c} :catch_49

    .line 1871
    const/16 v38, 0x0

    .line 1878
    :cond_f4
    :goto_5c
    if-eqz v18, :cond_f5

    .line 1883
    :try_start_9d
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_9d} :catch_4a

    .line 1884
    const/16 v18, 0x0

    .line 1892
    :cond_f5
    :goto_5d
    if-eqz v20, :cond_f6

    .line 1893
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f6
    move-object/from16 v3, v71

    goto/16 :goto_1c

    .line 1843
    .restart local v32       #e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_46
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_47
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_48
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_49
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_4a
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 1762
    .end local v57           #t:Ljava/lang/Throwable;
    .local v32, e:Ljava/lang/Exception;
    :catchall_e
    move-exception v3

    :try_start_9e
    monitor-exit v26
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_e

    :try_start_9f
    throw v3
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_0

    .line 1843
    .end local v32           #e:Ljava/lang/Exception;
    :catch_4b
    move-exception v32

    .line 1844
    .local v32, e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1852
    .end local v32           #e:Ljava/io/IOException;
    :catch_4c
    move-exception v32

    .line 1853
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1862
    .end local v32           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v32

    .line 1864
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1872
    .end local v32           #e:Ljava/io/IOException;
    :catch_4e
    move-exception v32

    .line 1874
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1886
    .end local v32           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v32

    .line 1888
    .restart local v32       #e:Ljava/io/IOException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1483
    .end local v32           #e:Ljava/io/IOException;
    .restart local v14       #b:[B
    .restart local v15       #bFirstResponse:Z
    .restart local v16       #bImageDownload:Z
    .restart local v17       #bUseRange:Z
    .restart local v21       #connectionProperty:Ljava/lang/String;
    .restart local v22       #contentLen:Ljava/lang/String;
    .restart local v37       #i:I
    .restart local v45       #notifypos:I
    .restart local v46       #notifystep:I
    .restart local v47       #os:Ljava/io/OutputStream;
    .restart local v54       #startPos:I
    .restart local v65       #totalLen:I
    .restart local v68       #url:Ljava/net/URL;
    :catch_50
    move-exception v3

    goto/16 :goto_3e

    .line 1797
    .end local v14           #b:[B
    .end local v15           #bFirstResponse:Z
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v37           #i:I
    .end local v45           #notifypos:I
    .end local v46           #notifystep:I
    .end local v47           #os:Ljava/io/OutputStream;
    .end local v54           #startPos:I
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catchall_f
    move-exception v3

    move-object/from16 v71, v3

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_3

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catchall_10
    move-exception v3

    move-object/from16 v71, v3

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_3

    .line 1753
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_51
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_2a

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_52
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_2a

    .line 1739
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_53
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_23

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_54
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_23

    .line 1677
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_55
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_1d

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_56
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_1d

    .line 1652
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_57
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_16

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_58
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_16

    .line 1649
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_59
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_15

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_5a
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_15

    .line 1621
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_5b
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_14

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_5c
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_14

    .line 1603
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_5d
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_9

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_5e
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_9

    .line 1585
    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    :catch_5f
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    goto/16 :goto_2

    .end local v24           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .end local v38           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v25       #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v39       #is:Ljava/util/zip/GZIPInputStream;
    :catch_60
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #cs:Landroid/taobao/apirequest/CounterInputStream;
    .restart local v24       #cs:Landroid/taobao/apirequest/CounterInputStream;
    move-object/from16 v38, v39

    .end local v39           #is:Ljava/util/zip/GZIPInputStream;
    .restart local v38       #is:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_2
.end method

.method public static isSend(I)Z
    .locals 4
    .parameter "max"

    .prologue
    const/4 v0, 0x0

    .line 715
    sget v1, Landroid/taobao/apirequest/ApiConnector;->SAMPLE_FREQUENCY_NUM:I

    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 719
    :cond_1
    sget-object v1, Landroid/taobao/apirequest/ApiConnector;->M_RAN:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 721
    sget-object v1, Landroid/taobao/apirequest/ApiConnector;->M_RAN:Ljava/util/Random;

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 722
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logTopAPI(Ljava/lang/String;Landroid/taobao/apirequest/ApiConnector$APIStat;J)V
    .locals 6
    .parameter "surl"
    .parameter "apiTimeStat"
    .parameter "apiTmp"

    .prologue
    .line 1909
    iget-wide v2, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_times:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_times:J

    .line 1910
    iget-wide v2, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_totalCost:J

    add-long/2addr v2, p3

    iput-wide v2, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_totalCost:J

    .line 1911
    const-string v2, "Taobao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "API\u603b\u65f6\u957f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_totalCost:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-wide v2, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_totalCost:J

    iget-wide v4, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_times:J

    div-long/2addr v2, v4

    iput-wide v2, p2, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_average_value:J

    .line 1913
    const-string v2, "&api="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p3, p4}, Landroid/taobao/apirequest/ApiConnector$APIStat;->isTop(J)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1914
    const-string v2, "Taobao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOP\u65f6\u957fAPI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string v2, "&api=([\\w+\\.]*)&"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1916
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1917
    .local v0, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1918
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p3, p4}, Landroid/taobao/apirequest/ApiConnector$APIStat;->add(Ljava/lang/String;J)V

    goto :goto_0

    .line 1921
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    :cond_0
    const-string v2, "Taobao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u5c5e\u4e8eTOP\u65f6\u957fAPI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    :cond_1
    return-void
.end method

.method public static report()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 544
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 546
    const-string v0, "Page_ImgStat"

    sget v1, Landroid/taobao/common/SDKConstants;->ID_PAGE_IMG_STAT:I

    sget-object v2, Landroid/taobao/apirequest/ApiConnector;->m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    invoke-virtual {v2}, Landroid/taobao/apirequest/ApiConnector$ConnStat;->report()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 549
    :cond_0
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    iget-wide v0, v0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 551
    const-string v0, "Page_ApiStat"

    sget v1, Landroid/taobao/common/SDKConstants;->ID_PAGE_API_STAT:I

    sget-object v2, Landroid/taobao/apirequest/ApiConnector;->m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    invoke-virtual {v2}, Landroid/taobao/apirequest/ApiConnector$ConnStat;->report()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 554
    :cond_1
    const-string v0, "Page_ApiTimeStat"

    sget v1, Landroid/taobao/common/SDKConstants;->ID_PAGE_API_TIME_STAT:I

    sget-object v2, Landroid/taobao/apirequest/ApiConnector;->m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

    invoke-virtual {v2}, Landroid/taobao/apirequest/ApiConnector$APIStat;->report()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 555
    const-string v0, "Taobao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API\u65f6\u957f\u7edf\u8ba1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/taobao/apirequest/ApiConnector;->m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

    invoke-virtual {v2}, Landroid/taobao/apirequest/ApiConnector$APIStat;->report()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_imgStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector$ConnStat;->reset()V

    .line 559
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiStat:Landroid/taobao/apirequest/ApiConnector$ConnStat;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector$ConnStat;->reset()V

    .line 560
    sget-object v0, Landroid/taobao/apirequest/ApiConnector;->m_apiTimeStat:Landroid/taobao/apirequest/ApiConnector$APIStat;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector$APIStat;->reset()V

    .line 561
    return-void
.end method

.method public static reportSingleStatToTBS(Landroid/taobao/apirequest/ApiConnector$SingleConnStat;)V
    .locals 8
    .parameter "sst"

    .prologue
    .line 588
    :try_start_0
    const-string v0, "Page_SingleApiStat"

    sget v1, Landroid/taobao/common/SDKConstants;->ID_PAGE_SINGLE_API_STAT:I

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->getOneWayTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x17

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->isDNSTimeout()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->postBodyTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->firstDataTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->roundTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->totalSize()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->totalCost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->serverHandleTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dataSpeed()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->connState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->exceptionCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->exceptionMsg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->connReferCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xc

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->responseCodeReferCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->firstDataReferCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xe

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dataReferCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xf

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->isRetry()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x10

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->wholeTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x11

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->wholeProcessReferCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x12

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dnsReferCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x13

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dnsThreadTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x14

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->isDNSCached()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x15

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->host()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x16

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->version()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    return-void

    .line 614
    :catchall_0
    move-exception v0

    throw v0
.end method

.method static setRedirectHandler(Landroid/taobao/apirequest/ConnRedirectHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 76
    sput-object p0, Landroid/taobao/apirequest/ApiConnector;->m_redirectHandler:Landroid/taobao/apirequest/ConnRedirectHandler;

    .line 77
    return-void
.end method

.method static setStatusListener(Landroid/taobao/apirequest/ApiConnectorStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 665
    sput-object p0, Landroid/taobao/apirequest/ApiConnector;->m_stautsListener:Landroid/taobao/apirequest/ApiConnectorStatusListener;

    .line 666
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiConnector;->cancelled:Z

    .line 737
    return-void
.end method

.method getApiProperty()Landroid/taobao/apirequest/ApiProperty;
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    return-object v0
.end method

.method public notifyDataArrive(Landroid/taobao/apirequest/ApiResult;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 870
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    invoke-interface {v0, p1}, Landroid/taobao/apirequest/AsyncDataListener;->onDataArrive(Landroid/taobao/apirequest/ApiResult;)V

    .line 872
    :cond_0
    return-void
.end method

.method protected replaceHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "regex"
    .parameter "oldURL"
    .parameter "newHost"

    .prologue
    .line 1982
    sget-boolean v3, Landroid/taobao/apirequest/ApiConnector;->IS_REPLACE_HOST:Z

    if-nez v3, :cond_1

    .line 1999
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 1986
    .restart local p2
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1990
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1991
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1992
    .local v0, matcher:Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1993
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1994
    invoke-virtual {v0, v2, p3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1998
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1999
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public reportSingleConnStat()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 572
    :cond_0
    sget v0, Landroid/taobao/apirequest/ApiConnector;->SAMPLE_FREQUENCY_NUM:I

    invoke-static {v0}, Landroid/taobao/apirequest/ApiConnector;->isSend(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const-string v0, "httpMonitorResult"

    iget-object v1, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->report()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-static {v0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleStatToTBS(Landroid/taobao/apirequest/ApiConnector$SingleConnStat;)V

    .line 578
    :cond_1
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->reset()V

    goto :goto_0
.end method

.method public setDataListener(Landroid/taobao/apirequest/AsyncDataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 860
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector;->m_dataListener:Landroid/taobao/apirequest/AsyncDataListener;

    .line 861
    return-void
.end method

.method public syncConnect()Landroid/taobao/apirequest/ApiResult;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x4

    const/4 v8, 0x0

    .line 749
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    iget-object v5, v5, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 752
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    iget-object v5, v5, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    invoke-static {v5}, Landroid/taobao/util/NetWork;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 754
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    invoke-direct {v0, v9}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    .line 844
    :cond_0
    :goto_0
    return-object v0

    .line 760
    :cond_1
    const-string v5, "TaoSdk.ApiRequest"

    const-string v6, "should set context for ApiRequestMgr!"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_2
    iput-boolean v7, p0, Landroid/taobao/apirequest/ApiConnector;->cancelled:Z

    .line 765
    iput v7, p0, Landroid/taobao/apirequest/ApiConnector;->redirectTime:I

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, apiResult:Landroid/taobao/apirequest/ApiResult;
    const/4 v3, 0x0

    .line 768
    .local v3, i:I
    const-string v2, ""

    .line 769
    .local v2, errMessage:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget v5, v5, Landroid/taobao/apirequest/ApiProperty;->m_retryTime:I

    if-ge v3, v5, :cond_8

    .line 771
    iget-boolean v5, p0, Landroid/taobao/apirequest/ApiConnector;->cancelled:Z

    if-eqz v5, :cond_3

    .line 772
    sget-object v0, Landroid/taobao/apirequest/ApiResult;->Cancelled:Landroid/taobao/apirequest/ApiResult;

    goto :goto_0

    .line 775
    :cond_3
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    .line 776
    .local v4, surl:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_5

    .line 777
    :cond_4
    sget-object v0, Landroid/taobao/apirequest/ApiResult;->BadParam:Landroid/taobao/apirequest/ApiResult;

    goto :goto_0

    .line 782
    :cond_5
    :try_start_0
    iget-object v5, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    if-eqz v5, :cond_6

    .line 783
    iget-object v5, p0, Landroid/taobao/apirequest/ApiConnector;->m_singleConnStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    iput v3, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    .line 785
    :cond_6
    iget-object v5, p0, Landroid/taobao/apirequest/ApiConnector;->m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

    if-eqz v5, :cond_7

    .line 786
    iget-object v5, p0, Landroid/taobao/apirequest/ApiConnector;->m_dnsResMo:Landroid/taobao/apirequest/DNSResolver;

    iput v3, v5, Landroid/taobao/apirequest/DNSResolver;->m_retry:I

    .line 789
    :cond_7
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiConnector;->dataConnect()Landroid/taobao/apirequest/ApiResult;
    :try_end_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/taobao/apirequest/ApiConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v1

    .line 793
    .local v1, e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->printStackTrace()V

    .line 795
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    .end local v0           #apiResult:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 796
    .restart local v0       #apiResult:Landroid/taobao/apirequest/ApiResult;
    iget v5, v1, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->mTimeout:I

    iput v5, v0, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    .line 817
    const-string v5, "ApiConnector retry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/taobao/apirequest/ApiConnector;->fullUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5

    .line 769
    .end local v1           #e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 801
    :catch_1
    move-exception v1

    .line 802
    .local v1, e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;->printStackTrace()V

    .line 804
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    .end local v0           #apiResult:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 829
    .end local v1           #e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;
    .end local v4           #surl:Ljava/lang/String;
    .restart local v0       #apiResult:Landroid/taobao/apirequest/ApiResult;
    :cond_8
    :goto_3
    iget-object v5, p0, Landroid/taobao/apirequest/ApiConnector;->apiProperty:Landroid/taobao/apirequest/ApiProperty;

    iget v5, v5, Landroid/taobao/apirequest/ApiProperty;->m_retryTime:I

    if-lt v3, v5, :cond_9

    .line 833
    :try_start_2
    new-instance v5, Landroid/taobao/apirequest/ApiConnector$NetworkFail;

    invoke-direct {v5, p0, v2}, Landroid/taobao/apirequest/ApiConnector$NetworkFail;-><init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 835
    :catch_2
    move-exception v1

    .line 837
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/taobao/statistic/TBS$Adv;->onCaughException(Ljava/lang/Throwable;)V

    .line 841
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    if-nez v0, :cond_0

    .line 842
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    .end local v0           #apiResult:Landroid/taobao/apirequest/ApiResult;
    const/16 v5, -0x3e8

    const-string v6, "\u5185\u90e8\u9519\uff1aApiResult\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v5, v6, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .restart local v0       #apiResult:Landroid/taobao/apirequest/ApiResult;
    goto/16 :goto_0

    .line 807
    .restart local v4       #surl:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 809
    .local v1, e:Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;->printStackTrace()V

    .line 810
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    .end local v0           #apiResult:Landroid/taobao/apirequest/ApiResult;
    const/4 v5, -0x6

    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 811
    .restart local v0       #apiResult:Landroid/taobao/apirequest/ApiResult;
    goto :goto_3

    .line 812
    .end local v1           #e:Landroid/taobao/apirequest/ApiConnector$ApiOverFlowException;
    :catch_4
    move-exception v1

    .line 813
    .local v1, e:Landroid/taobao/apirequest/ApiConnector$RedirectException;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$RedirectException;->printStackTrace()V

    .line 814
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    .end local v0           #apiResult:Landroid/taobao/apirequest/ApiResult;
    const/4 v5, -0x5

    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiConnector$RedirectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 815
    .restart local v0       #apiResult:Landroid/taobao/apirequest/ApiResult;
    goto :goto_3

    .line 824
    .local v1, e:Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
    :catch_5
    move-exception v1

    .line 825
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "ApiConnector"

    const-string v6, "ApiConnector retry Sleep has been interrupted, go ahead"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
