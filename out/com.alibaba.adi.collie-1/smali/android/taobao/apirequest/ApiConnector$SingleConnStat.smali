.class Landroid/taobao/apirequest/ApiConnector$SingleConnStat;
.super Ljava/lang/Object;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleConnStat"
.end annotation


# static fields
.field private static final VERSION:I = 0x3

.field public static final X_SERVER_TIME:Ljava/lang/String; = "x-server-rt"


# instance fields
.field m_host:Ljava/lang/String;

.field m_siConTime:J

.field m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field m_siConnectReferCount:I

.field m_siDNSReferCount:I

.field m_siDNSThreadTag:I

.field m_siDNSTime:J

.field m_siExceptionErroCode:I

.field m_siExceptionMessage:Ljava/lang/String;

.field m_siFirstData:J

.field m_siGetDataReferCount:I

.field m_siGetFirstDataReferCount:I

.field m_siGetResponseCodeReferCount:I

.field m_siIsDNSCached:I

.field m_siIsDNSTimeout:I

.field m_siIsRetry:I

.field m_siPostBodyTime:J

.field m_siRoundTime:J

.field m_siServerHandleTime:J

.field m_siTotalCost:J

.field m_siTotalSize:J

.field m_siWholeProcessReferCount:I

.field m_siWholeTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 117
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 118
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    .line 119
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    .line 120
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    .line 121
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    .line 122
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 123
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    .line 125
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    .line 127
    sget-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->START:Landroid/taobao/apirequest/ApiConnector$ConnState;

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 129
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 130
    const-string v0, "none"

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 138
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    .line 139
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    .line 140
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    .line 141
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    .line 144
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    .line 146
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 147
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    .line 148
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    .line 150
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 151
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/taobao/apirequest/ApiConnector$SingleConnStat;)V
    .locals 4
    .parameter "singleStat"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 117
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 118
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    .line 119
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    .line 120
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    .line 121
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    .line 122
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 123
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    .line 125
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    .line 127
    sget-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->START:Landroid/taobao/apirequest/ApiConnector$ConnState;

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 129
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 130
    const-string v0, "none"

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 138
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    .line 139
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    .line 140
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    .line 141
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    .line 144
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    .line 146
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 147
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    .line 148
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    .line 150
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 151
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 161
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 162
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 163
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    .line 164
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    .line 165
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    .line 166
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    .line 167
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 168
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    .line 169
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    .line 170
    iget-object v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 171
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 172
    iget-object v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 173
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    .line 174
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    .line 175
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    .line 176
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    .line 177
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    .line 178
    iget-wide v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 179
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    .line 180
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    .line 181
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 182
    iget v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    iput v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    .line 183
    iget-object v0, p1, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method connReferCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectReferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method connState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dataReferCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataReferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dataSpeed()Ljava/lang/String;
    .locals 6

    .prologue
    .line 264
    const-wide/16 v0, 0x0

    .line 266
    .local v0, data_speed:J
    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 267
    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    div-long v0, v2, v4

    .line 269
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataSpeed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method dnsReferCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNSReferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dnsThreadTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNSThreadTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method exceptionCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionErroCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method exceptionMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method firstDataReferCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstDataReferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method firstDataTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOneWayTime()J
    .locals 6

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    .line 229
    .local v0, onWayTime:J
    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 230
    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long v0, v2, v4

    .line 232
    :cond_0
    return-wide v0
.end method

.method host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDNSCached()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDNSCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDNSTimeout()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDNSTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isRetry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method postBodyTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postBodyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method report()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, res:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->isDNSTimeout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNSTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->postBodyTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->firstDataTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->roundTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->totalSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->totalCost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->serverHandleTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oneWayTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->getOneWayTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dataSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->connState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->exceptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->exceptionMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->connReferCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->responseCodeReferCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->firstDataReferCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dataReferCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->isRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->wholeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->wholeProcessReferCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dnsReferCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->dnsThreadTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->isDNSCached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->version()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 187
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 188
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 189
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConTime:J

    .line 190
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siFirstData:J

    .line 191
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    .line 192
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    .line 193
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    .line 194
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    .line 196
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siPostBodyTime:J

    .line 198
    sget-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->START:Landroid/taobao/apirequest/ApiConnector$ConnState;

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnState:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 200
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 201
    const-string v0, "none"

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 209
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siConnectReferCount:I

    .line 210
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    .line 211
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetFirstDataReferCount:I

    .line 212
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetDataReferCount:I

    .line 214
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    .line 216
    iput-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    .line 217
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    .line 218
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    .line 219
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 220
    iput v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    .line 223
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 224
    return-void
.end method

.method responseCodeReferCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCodeReferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siGetResponseCodeReferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method roundTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siRoundTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method serverHandleTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverHandleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siServerHandleTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method totalCost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalCost:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method totalSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siTotalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string v0, "version=3"

    return-object v0
.end method

.method wholeProcessReferCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wholeProcessReferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wholeTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wholeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
