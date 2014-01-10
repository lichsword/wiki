.class public Landroid/taobao/apirequest/ApiProperty;
.super Ljava/lang/Object;
.source "ApiProperty.java"


# static fields
.field public static final DEFAULT_AUTO_REDIRECT:Z = true

.field public static final DEFAULT_CLIENT_EXPIRETIME:I = 0x1e13380

.field private static final DEFAULT_DOWN_MAX_SIZE:I = 0x300000

.field public static final DEFAULT_RETRYTIMES:I = 0x3

.field private static final DEFAULT_STEP_PERCENT:I = 0xa


# instance fields
.field expireTime:I

.field m_ProgressStep:I

.field protected m_bPost:Z

.field protected m_bTop:Z

.field protected m_cacheKey:Ljava/lang/String;

.field protected m_cachePolicy:I

.field protected m_cacheStorage:I

.field protected m_connHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_downMaxSize:I

.field m_outStream:Ljava/io/OutputStream;

.field protected m_postData:[B

.field protected m_priority:I

.field protected m_redirectAuto:Z

.field protected m_retryTime:I

.field m_startPos:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_bTop:Z

    .line 101
    iput-boolean v1, p0, Landroid/taobao/apirequest/ApiProperty;->m_redirectAuto:Z

    .line 102
    iput v1, p0, Landroid/taobao/apirequest/ApiProperty;->m_priority:I

    .line 103
    iput v3, p0, Landroid/taobao/apirequest/ApiProperty;->m_retryTime:I

    .line 104
    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_bTop:Z

    .line 105
    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_bPost:Z

    .line 106
    iput-object v2, p0, Landroid/taobao/apirequest/ApiProperty;->m_postData:[B

    .line 107
    iput-object v2, p0, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    .line 108
    iput v1, p0, Landroid/taobao/apirequest/ApiProperty;->m_cacheStorage:I

    .line 109
    iput v3, p0, Landroid/taobao/apirequest/ApiProperty;->m_cachePolicy:I

    .line 110
    const v0, 0x1e13380

    iput v0, p0, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    .line 112
    iput-object v2, p0, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    .line 113
    const/high16 v0, 0x30

    iput v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_downMaxSize:I

    .line 114
    const/16 v0, 0xa

    iput v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_ProgressStep:I

    .line 116
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCachePolicy()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_cachePolicy:I

    return v0
.end method

.method public getCacheStoragePolicy()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_cacheStorage:I

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_redirectAuto:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_priority:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_retryTime:I

    return v0
.end method

.method public getStartPos()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    return-wide v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .parameter "cacheKey"

    .prologue
    .line 276
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_cacheKey:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setCachePolicy(I)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 256
    iput p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_cachePolicy:I

    .line 257
    return-void
.end method

.method public setCacheStoragePolicy(I)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 217
    iput p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_cacheStorage:I

    .line 218
    return-void
.end method

.method public setConnectionHeader(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_connHeaders:Ljava/util/Map;

    .line 305
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 162
    iput-boolean p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_redirectAuto:Z

    .line 163
    return-void
.end method

.method public setPost(Z)V
    .locals 0
    .parameter "bPost"

    .prologue
    .line 325
    iput-boolean p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_bPost:Z

    .line 326
    return-void
.end method

.method public setPostData([B)V
    .locals 1
    .parameter "postData"

    .prologue
    .line 315
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_postData:[B

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/taobao/apirequest/ApiProperty;->setPost(Z)V

    .line 317
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "p"

    .prologue
    .line 188
    iput p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_priority:I

    .line 189
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .parameter "times"

    .prologue
    .line 286
    iput p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_retryTime:I

    .line 287
    return-void
.end method

.method public setStartPos(J)V
    .locals 0
    .parameter "startPos"

    .prologue
    .line 152
    iput-wide p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    .line 153
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .parameter "bTop"

    .prologue
    .line 126
    iput-boolean p1, p0, Landroid/taobao/apirequest/ApiProperty;->m_bTop:Z

    .line 127
    return-void
.end method
