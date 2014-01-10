.class public Landroid/taobao/apirequest/ApiResult;
.super Ljava/lang/Object;
.source "ApiResult.java"


# static fields
.field static BadParam:Landroid/taobao/apirequest/ApiResult; = null

.field static Cancelled:Landroid/taobao/apirequest/ApiResult; = null

.field static final DEFAULT_SERVER_EXPIRETIME:I = 0x278d00

.field static DNSError:Landroid/taobao/apirequest/ApiResult;


# instance fields
.field public bytedata:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public data:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public errCode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public errDescription:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field expireTime:I

.field public resultCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timeoutTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiResult;->Cancelled:Landroid/taobao/apirequest/ApiResult;

    .line 58
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiResult;->BadParam:Landroid/taobao/apirequest/ApiResult;

    .line 59
    new-instance v0, Landroid/taobao/apirequest/ApiResult;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    sput-object v0, Landroid/taobao/apirequest/ApiResult;->DNSError:Landroid/taobao/apirequest/ApiResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    .line 73
    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 75
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    .line 76
    const v0, 0x278d00

    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    .line 82
    iput p1, p0, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 84
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    .line 85
    const v0, 0x278d00

    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 86
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1
    .parameter "res"
    .parameter "des"
    .parameter "data"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    .line 92
    iput p1, p0, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    .line 93
    iput-object p2, p0, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 95
    const v0, 0x278d00

    iput v0, p0, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 96
    return-void
.end method


# virtual methods
.method public getBytedata()[B
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    return v0
.end method

.method public getTimeoutTime()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    return v0
.end method

.method public isApiSuccess()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBytedata([B)V
    .locals 0
    .parameter "bytedata"

    .prologue
    .line 164
    iput-object p1, p0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 165
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 173
    iput-object p1, p0, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setErrDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "errDescription"

    .prologue
    .line 146
    iput-object p1, p0, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setExpireTime(I)V
    .locals 0
    .parameter "expireTime"

    .prologue
    .line 152
    iput p1, p0, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 153
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 134
    iput p1, p0, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    .line 135
    return-void
.end method

.method public setTimeoutTime(I)V
    .locals 0
    .parameter "timeoutTime"

    .prologue
    .line 158
    iput p1, p0, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    .line 159
    return-void
.end method
