.class public Lorg/android/agoo/service/ElectionService;
.super Landroid/app/Service;
.source "ElectionService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/service/ElectionService$ElectionResult;
    }
.end annotation


# static fields
.field private static final ELECTION_FINISH:I = 0x66

.field private static final ELECTION_RESULT:I = 0x67

.field private static final LOCAL_ELECTION:I = 0x65

.field private static final REMOTE_ELECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ElectionService"

.field private static random:Ljava/util/Random;


# instance fields
.field private electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;

.field private final electionServiceBinder:Lorg/android/agoo/service/IElectionService$Stub;

.field private volatile electionSource:Ljava/lang/String;

.field private handerThread:Landroid/os/HandlerThread;

.field private hanlder:Landroid/os/Handler;

.field private volatile ifNotAddElection:Z

.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mContext:Landroid/content/Context;

.field private volatile maxPriority:J

.field private volatile packMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile packs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile sudos:Ljava/util/Map;
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

.field private volatile timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/android/agoo/service/ElectionService;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/service/ElectionService;->packs:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/service/ElectionService;->sudos:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;

    .line 58
    const-string v0, "local"

    iput-object v0, p0, Lorg/android/agoo/service/ElectionService;->electionSource:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/android/agoo/service/ElectionService;->hanlder:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    .line 61
    iput-wide v3, p0, Lorg/android/agoo/service/ElectionService;->maxPriority:J

    .line 62
    iput-boolean v2, p0, Lorg/android/agoo/service/ElectionService;->ifNotAddElection:Z

    .line 63
    iput-object v1, p0, Lorg/android/agoo/service/ElectionService;->handerThread:Landroid/os/HandlerThread;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    iput-wide v3, p0, Lorg/android/agoo/service/ElectionService;->timeout:J

    .line 134
    new-instance v0, Lorg/android/agoo/service/ElectionService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/service/ElectionService$1;-><init>(Lorg/android/agoo/service/ElectionService;)V

    iput-object v0, p0, Lorg/android/agoo/service/ElectionService;->electionServiceBinder:Lorg/android/agoo/service/IElectionService$Stub;

    .line 349
    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/service/ElectionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/android/agoo/service/ElectionService;->ifNotAddElection:Z

    return v0
.end method

.method static synthetic access$100(Lorg/android/agoo/service/ElectionService;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/service/ElectionService;->addElectionQueue(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lorg/android/agoo/service/ElectionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/android/agoo/service/ElectionService;->handleLocalElection()V

    return-void
.end method

.method static synthetic access$302(Lorg/android/agoo/service/ElectionService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lorg/android/agoo/service/ElectionService;->timeout:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/android/agoo/service/ElectionService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/android/agoo/service/ElectionService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/service/ElectionService;->sudos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/android/agoo/service/ElectionService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/android/agoo/service/ElectionService;->handleElectionFinish(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addElectionQueue(Ljava/lang/String;J)V
    .locals 4
    .parameter "pack"
    .parameter "priority"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-lez v1, :cond_3

    .line 147
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addElection[pack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-wide v1, p0, Lorg/android/agoo/service/ElectionService;->maxPriority:J

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 150
    iput-wide p2, p0, Lorg/android/agoo/service/ElectionService;->maxPriority:J

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->packs:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    .line 153
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    .line 156
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->packs:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/service/ElectionService;->list:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_3
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 162
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->hanlder:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private finish()V
    .locals 8

    .prologue
    .line 324
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->sudos:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 325
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, sudo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 326
    .local v0, clientPack:Ljava/lang/String;
    const/4 v2, 0x0

    .line 327
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/android/agoo/service/ElectionService$ElectionResult;

    invoke-direct {v5}, Lorg/android/agoo/service/ElectionService$ElectionResult;-><init>()V

    iput-object v5, p0, Lorg/android/agoo/service/ElectionService;->electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;

    .line 328
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;

    iget-wide v6, p0, Lorg/android/agoo/service/ElectionService;->timeout:J

    invoke-virtual {v5, v6, v7}, Lorg/android/agoo/service/ElectionService$ElectionResult;->setTimeout(J)V

    .line 329
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;

    iget-object v6, p0, Lorg/android/agoo/service/ElectionService;->electionSource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/android/agoo/service/ElectionService$ElectionResult;->setElectionSource(Ljava/lang/String;)V

    .line 330
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v2, Ljava/util/Map$Entry;

    .line 332
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientPack:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 333
    .restart local v0       #clientPack:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #sudo:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 335
    .restart local v4       #sudo:Ljava/lang/String;
    :try_start_0
    const-string v5, "ElectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish[clientPack:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][sudo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][electionSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/android/agoo/service/ElectionService;->electionSource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;

    invoke-virtual {v5, v0, v4}, Lorg/android/agoo/service/ElectionService$ElectionResult;->putSudo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Throwable;
    const-string v5, "ElectionService"

    const-string v6, "finish--Exception"

    invoke-static {v5, v6, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 342
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_0
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->sudos:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 343
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 344
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->packs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 345
    return-void
.end method

.method private handleElectionFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "electionSource"

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 298
    iput-object p1, p0, Lorg/android/agoo/service/ElectionService;->electionSource:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->hanlder:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method

.method private handleLocalElection()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/android/agoo/service/ElectionService;->hanlder:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    return-void
.end method

.method private local()V
    .locals 7

    .prologue
    .line 186
    iget-object v4, p0, Lorg/android/agoo/service/ElectionService;->packs:Ljava/util/Map;

    iget-wide v5, p0, Lorg/android/agoo/service/ElectionService;->maxPriority:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 187
    .local v1, maxPacks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lorg/android/agoo/service/ElectionService;->randomSet(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, sudoPack:Ljava/lang/String;
    iget-object v4, p0, Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 190
    .local v2, pack:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pack:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 192
    .restart local v2       #pack:Ljava/lang/String;
    iget-object v4, p0, Lorg/android/agoo/service/ElectionService;->sudos:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_0
    const-string v4, "local"

    invoke-direct {p0, v4}, Lorg/android/agoo/service/ElectionService;->handleElectionFinish(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private randomSet(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, maxPacks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 171
    .local v3, sudoPack:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 173
    .local v1, len:I
    sget-object v4, Lorg/android/agoo/service/ElectionService;->random:Ljava/util/Random;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 174
    .local v2, rand:I
    rem-int v0, v2, v1

    .line 175
    .local v0, index:I
    const-string v4, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "random ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "random index["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sudoPack:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 179
    .end local v0           #index:I
    .end local v1           #len:I
    .end local v2           #rand:I
    .restart local v3       #sudoPack:Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_1
    return-object v3
.end method

.method private remote()V
    .locals 7

    .prologue
    .line 198
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, appKey:Ljava/lang/String;
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, ttId:Ljava/lang/String;
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    :cond_0
    const-string v5, "ElectionService"

    const-string v6, "remote registered==null"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lorg/android/agoo/service/ElectionService;->handleLocalElection()V

    .line 293
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v3, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v3}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 207
    .local v3, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v5, "mtop.taobao.channel.vote"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 208
    const-string v5, "6.0"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 211
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 212
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "vote_factors"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    new-instance v1, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;-><init>()V

    .line 214
    .local v1, client:Lorg/android/agoo/net/mtop/MtopAsyncClientV3;
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->setDefaultAppkey(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->setBaseUrl(Ljava/lang/String;)V

    .line 217
    iget-object v5, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    new-instance v6, Lorg/android/agoo/service/ElectionService$2;

    invoke-direct {v6, p0}, Lorg/android/agoo/service/ElectionService$2;-><init>(Lorg/android/agoo/service/ElectionService;)V

    invoke-virtual {v1, v5, v3, v6}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;Lorg/android/agoo/net/mtop/MtopResponseHandler;)V

    goto :goto_0
.end method

.method private sendElectionResult()V
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 417
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "org.agoo.android.intent.action.RE_ELECTION_V2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "election_result"

    iget-object v2, p0, Lorg/android/agoo/service/ElectionService;->electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 420
    const-string v1, "election_type"

    const-string v2, "election_notice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 71
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return v3

    .line 73
    :pswitch_0
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/android/agoo/service/ElectionService;->ifNotAddElection:Z

    .line 75
    invoke-direct {p0}, Lorg/android/agoo/service/ElectionService;->remote()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "ElectionService"

    const-string v2, "destroy  exception"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/android/agoo/service/ElectionService;->ifNotAddElection:Z

    .line 80
    invoke-direct {p0}, Lorg/android/agoo/service/ElectionService;->local()V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 84
    invoke-direct {p0}, Lorg/android/agoo/service/ElectionService;->finish()V

    .line 85
    invoke-direct {p0}, Lorg/android/agoo/service/ElectionService;->sendElectionResult()V

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/android/agoo/service/ElectionService;->ifNotAddElection:Z

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p0}, Lorg/android/agoo/service/ElectionService;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.agoo.android.intent.action.ELECTION_V2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/android/agoo/service/ElectionService;->electionServiceBinder:Lorg/android/agoo/service/IElectionService$Stub;

    .line 128
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    iput-object p0, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    .line 108
    iget-object v2, p0, Lorg/android/agoo/service/ElectionService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/log/AgooLog;->startLog(Landroid/content/Context;)V

    .line 109
    const-string v2, "ElectionService"

    const-string v3, "create"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "election_service"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/android/agoo/service/ElectionService;->handerThread:Landroid/os/HandlerThread;

    .line 112
    iget-object v2, p0, Lorg/android/agoo/service/ElectionService;->handerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 113
    iget-object v2, p0, Lorg/android/agoo/service/ElectionService;->handerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 114
    .local v1, looper:Landroid/os/Looper;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lorg/android/agoo/service/ElectionService;->hanlder:Landroid/os/Handler;

    .line 115
    iget-object v2, p0, Lorg/android/agoo/service/ElectionService;->hanlder:Landroid/os/Handler;

    const/16 v3, 0x67

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1           #looper:Landroid/os/Looper;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "ElectionService"

    const-string v3, "election_service_handlerthread"

    invoke-static {v2, v3, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 310
    :try_start_0
    const-string v0, "ElectionService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 312
    iget-object v0, p0, Lorg/android/agoo/service/ElectionService;->packs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 313
    iget-object v0, p0, Lorg/android/agoo/service/ElectionService;->electionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 314
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/service/ElectionService;->maxPriority:J

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/service/ElectionService;->ifNotAddElection:Z

    .line 316
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
