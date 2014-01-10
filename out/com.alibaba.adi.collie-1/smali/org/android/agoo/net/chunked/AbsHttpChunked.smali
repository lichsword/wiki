.class abstract Lorg/android/agoo/net/chunked/AbsHttpChunked;
.super Ljava/lang/Object;
.source "AbsHttpChunked.java"

# interfaces
.implements Lorg/android/agoo/net/chunked/IHttpChunked;


# static fields
.field protected static final CHUNKED_LENGTH:I = 0x2000

.field private static final DATA_CR_CHAR:C = '\r'

.field private static final DATA_LF_CHAR:C = '\n'

.field private static final HEART_CHAR:[C = null

.field private static final TAG:Ljava/lang/String; = "HttpChunked"

.field private static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected volatile clientHeaderMap:Ljava/util/Map;
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

.field protected volatile debug:Z

.field private volatile eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

.field private volatile futureConnect:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile futureTimeout:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile host:Ljava/lang/String;

.field protected volatile httpStatusCode:I

.field protected volatile input:Ljava/io/InputStream;

.field protected volatile mCId:I

.field private volatile port:I

.field protected volatile readyState:Lorg/android/agoo/net/chunked/ChunkedState;

.field private volatile threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected volatile url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->HEART_CHAR:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureConnect:Ljava/util/concurrent/Future;

    .line 40
    iput-object v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureTimeout:Ljava/util/concurrent/Future;

    .line 44
    sget-object v0, Lorg/android/agoo/net/chunked/ChunkedState;->DISCONNECTED:Lorg/android/agoo/net/chunked/ChunkedState;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    .line 45
    iput-object v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->input:Ljava/io/InputStream;

    .line 46
    iput v2, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    .line 47
    iput v2, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->httpStatusCode:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->debug:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->clientHeaderMap:Ljava/util/Map;

    .line 54
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/net/chunked/AbsHttpChunked;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->clearConnectId()V

    return-void
.end method

.method public static byteToChar([B)C
    .locals 3
    .parameter "b"

    .prologue
    .line 195
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-char v0, v1

    .line 196
    .local v0, c:C
    return v0
.end method

.method private clearConnectId()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    .line 64
    return-void
.end method

.method private isDisconnect()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->DISCONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->DISCONNECTED:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setProxy(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    new-instance v0, Lorg/android/agoo/net/ConnectManager;

    invoke-direct {v0, p1}, Lorg/android/agoo/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, connectManager:Lorg/android/agoo/net/ConnectManager;
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->isWapNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->getProxy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->host:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->getProxyPort()I

    move-result v1

    iput v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->port:I

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 67
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;

    invoke-direct {v1, p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;-><init>(Lorg/android/agoo/net/chunked/AbsHttpChunked;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 180
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract closeConnectPool()V
.end method

.method public final connect(Landroid/content/Context;Ljava/lang/String;JLorg/android/agoo/net/chunked/IChunkedHandler;)V
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "timeout"
    .parameter "eventHandler"

    .prologue
    .line 81
    if-nez p5, :cond_0

    .line 82
    const-string v0, "HttpChunked"

    const-string v1, "eventHandler == null "

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p2, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->url:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v0, v1, :cond_2

    .line 87
    :cond_1
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http chunked connect url: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connectId:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connecting......"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->setProxy(Landroid/content/Context;)V

    .line 92
    iput-object p5, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    .line 93
    sget-object v0, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    .line 94
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;

    invoke-direct {v1, p0, p2}, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;-><init>(Lorg/android/agoo/net/chunked/AbsHttpChunked;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureConnect:Ljava/util/concurrent/Future;

    .line 105
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/net/chunked/AbsHttpChunked$2;

    invoke-direct {v1, p0, p3, p4, p2}, Lorg/android/agoo/net/chunked/AbsHttpChunked$2;-><init>(Lorg/android/agoo/net/chunked/AbsHttpChunked;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureTimeout:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected abstract connect(Ljava/lang/String;)V
.end method

.method protected connectId()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 59
    .local v0, random:Ljava/util/Random;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    .line 60
    return-void
.end method

.method protected abstract disHttpConnect()V
.end method

.method public final disconnect(I)V
    .locals 3
    .parameter "cId"

    .prologue
    .line 128
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http chunked disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    if-eq v0, p1, :cond_0

    .line 130
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http chunked connect cId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] != mCId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lorg/android/agoo/net/chunked/ChunkedState;->DISCONNECTED:Lorg/android/agoo/net/chunked/ChunkedState;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    .line 156
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->isDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http chunked connect["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lorg/android/agoo/net/chunked/ChunkedState;->DISCONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    .line 139
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/net/chunked/AbsHttpChunked$3;

    invoke-direct {v1, p0, p1}, Lorg/android/agoo/net/chunked/AbsHttpChunked$3;-><init>(Lorg/android/agoo/net/chunked/AbsHttpChunked;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 155
    sget-object v0, Lorg/android/agoo/net/chunked/ChunkedState;->DISCONNECTED:Lorg/android/agoo/net/chunked/ChunkedState;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    goto :goto_0
.end method

.method protected final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected final getPort()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->port:I

    return v0
.end method

.method protected final hasProxy()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onClose()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->isDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    invoke-interface {v0}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onClose()V

    goto :goto_0
.end method

.method protected final onError(ILjava/lang/Throwable;)V
    .locals 2
    .parameter "httpStatusCode"
    .parameter "t"

    .prologue
    .line 324
    iget v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->disconnect(I)V

    .line 325
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1, p2}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onError(ILjava/util/Map;Ljava/lang/Throwable;)V

    .line 328
    :cond_0
    return-void
.end method

.method protected final onError(ILjava/util/Map;)V
    .locals 4
    .parameter "httpStatusCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->disconnect(I)V

    .line 316
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    new-instance v1, Lorg/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http chunked connectId:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] http Status code=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onError(ILjava/util/Map;Ljava/lang/Throwable;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected final onMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 287
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    invoke-interface {v0, p1}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onMessage(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method protected final onOpen(Ljava/util/Map;)V
    .locals 2
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
    .line 291
    .local p1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    iput-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    .line 293
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    iget v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-interface {v0, v1, p1}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onOpen(ILjava/util/Map;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected final onSysData([C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 281
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->eventHandler:Lorg/android/agoo/net/chunked/IChunkedHandler;

    invoke-interface {v0, p1}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onSysData([C)V

    .line 284
    :cond_0
    return-void
.end method

.method protected final read()V
    .locals 12

    .prologue
    const/16 v11, 0x1f8

    const/16 v10, 0xd

    const/4 v9, 0x6

    .line 206
    const/4 v0, -0x1

    .line 207
    .local v0, c:I
    const/4 v4, 0x0

    .line 208
    .local v4, lastCr:Z
    const/4 v2, 0x0

    .line 209
    .local v2, i:I
    const/4 v7, 0x6

    :try_start_0
    new-array v6, v7, [C

    .line 210
    .local v6, sysdata:[C
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->input:Ljava/io/InputStream;

    const-string v8, "UTF-8"

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 211
    .local v3, isr:Ljava/io/InputStreamReader;
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x2000

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 212
    .local v5, result:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_8

    .line 213
    const/16 v7, 0x20

    if-ne v0, v7, :cond_2

    .line 214
    sget-object v7, Lorg/android/agoo/net/chunked/AbsHttpChunked;->HEART_CHAR:[C

    invoke-virtual {p0, v7}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->onSysData([C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v5           #result:Ljava/lang/StringBuffer;
    .end local v6           #sysdata:[C
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/Throwable;
    const-string v7, "HttpChunked"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Throwable connectId:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]==>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    invoke-virtual {p0, v11, v1}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->onError(ILjava/lang/Throwable;)V

    .line 265
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .line 217
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #result:Ljava/lang/StringBuffer;
    .restart local v6       #sysdata:[C
    :cond_2
    const/4 v2, 0x0

    .line 218
    :goto_2
    const/16 v7, 0x40

    if-ne v0, v7, :cond_3

    if-ge v2, v9, :cond_3

    .line 219
    int-to-char v7, v0

    :try_start_1
    aput-char v7, v6, v2

    .line 220
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .line 221
    const/4 v7, 0x5

    if-lt v2, v7, :cond_6

    .line 222
    invoke-virtual {p0, v6}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->onSysData([C)V

    .line 227
    :cond_3
    const/16 v7, 0xa

    if-eq v0, v7, :cond_5

    .line 228
    if-eqz v4, :cond_4

    .line 229
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    const/4 v4, 0x0

    .line 232
    :cond_4
    if-ne v0, v10, :cond_7

    .line 233
    const/4 v4, 0x1

    .line 238
    :goto_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .line 239
    if-gez v0, :cond_3

    .line 243
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->onMessage(Ljava/lang/String;)V

    .line 245
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 225
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 236
    :cond_7
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 248
    :cond_8
    iget-object v7, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    sget-object v8, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v7, v8, :cond_1

    .line 249
    const-string v7, "HttpChunked"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connectId:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]==>server data is abort"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/16 v7, 0x1f8

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectId:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] server data is abort"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->onError(ILjava/lang/Throwable;)V

    .line 252
    iget v7, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {p0, v7}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->disconnect(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final readyState()Lorg/android/agoo/net/chunked/ChunkedState;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->readyState:Lorg/android/agoo/net/chunked/ChunkedState;

    return-object v0
.end method

.method protected final stopConnectTask()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureConnect:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureConnect:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected final stopFutureTimeout()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureTimeout:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked;->futureTimeout:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    :cond_0
    return-void
.end method
