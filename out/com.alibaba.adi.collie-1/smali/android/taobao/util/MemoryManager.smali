.class public Landroid/taobao/util/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;,
        Landroid/taobao/util/MemoryManager$MemoryManagerListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Landroid/taobao/util/MemoryManager;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/app/Application;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/util/MemoryManager$MemoryManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMemory:I

.field private mProcessName:Ljava/lang/String;

.field private mThresholdMemory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MEMORY_MANAGER"

    sput-object v0, Landroid/taobao/util/MemoryManager;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/util/MemoryManager;->mInstance:Landroid/taobao/util/MemoryManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Landroid/taobao/util/MemoryManager;->mContext:Landroid/app/Application;

    .line 22
    iput-object v0, p0, Landroid/taobao/util/MemoryManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 26
    iput v1, p0, Landroid/taobao/util/MemoryManager;->mMaxMemory:I

    .line 27
    iput v1, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    .line 30
    iput-object v0, p0, Landroid/taobao/util/MemoryManager;->mListeners:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/util/MemoryManager;->mListeners:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/util/MemoryManager;
    .locals 2

    .prologue
    .line 42
    const-class v1, Landroid/taobao/util/MemoryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/util/MemoryManager;->mInstance:Landroid/taobao/util/MemoryManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/taobao/util/MemoryManager;

    invoke-direct {v0}, Landroid/taobao/util/MemoryManager;-><init>()V

    sput-object v0, Landroid/taobao/util/MemoryManager;->mInstance:Landroid/taobao/util/MemoryManager;

    .line 45
    :cond_0
    sget-object v0, Landroid/taobao/util/MemoryManager;->mInstance:Landroid/taobao/util/MemoryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProcessMemoryInfo(Ljava/lang/String;)Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;
    .locals 21
    .parameter "ProcessName"

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, mem_dalvik:I
    const/4 v4, 0x0

    .line 101
    .local v4, mem_native:I
    const/4 v6, 0x0

    .line 103
    .local v6, mem_limit:I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v3, 0x0

    .line 107
    sget-object v1, Landroid/taobao/util/MemoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not dump ,sdk not support. sdk version :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    new-instance v1, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/taobao/util/MemoryManager;->mMaxMemory:I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;-><init>(Landroid/taobao/util/MemoryManager;IIII)V

    :goto_1
    return-object v1

    .line 111
    :cond_0
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v18, temp:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpsys meminfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, cmd:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .line 117
    .local v16, process:Ljava/lang/Process;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v13, isr:Ljava/io/InputStreamReader;
    const/16 v1, 0x400

    new-array v7, v1, [C

    .line 120
    .local v7, c:[C
    const/4 v14, 0x0

    .line 121
    .local v14, len:I
    :goto_2
    invoke-virtual {v13, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14

    const/4 v1, -0x1

    if-eq v14, v1, :cond_1

    .line 122
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2, v14}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 124
    .end local v7           #c:[C
    .end local v8           #cmd:Ljava/lang/String;
    .end local v13           #isr:Ljava/io/InputStreamReader;
    .end local v14           #len:I
    .end local v16           #process:Ljava/lang/Process;
    :catch_0
    move-exception v9

    .line 125
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    new-instance v1, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/taobao/util/MemoryManager;->mMaxMemory:I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;-><init>(Landroid/taobao/util/MemoryManager;IIII)V

    goto :goto_1

    .line 128
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #c:[C
    .restart local v8       #cmd:Ljava/lang/String;
    .restart local v13       #isr:Ljava/io/InputStreamReader;
    .restart local v14       #len:I
    .restart local v16       #process:Ljava/lang/Process;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, result:Ljava/lang/String;
    const-string v1, "alloc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 130
    .local v10, indexStart:I
    const/4 v1, -0x1

    if-ne v10, v1, :cond_2

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v3, 0x0

    .line 134
    sget-object v1, Landroid/taobao/util/MemoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find the process "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_2
    const-string v1, "size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 138
    .local v12, indexStop2:I
    if-ltz v12, :cond_3

    if-ge v12, v10, :cond_3

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, limits:Ljava/lang/String;
    const-string v1, "\\s+"

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 142
    .local v20, tokens2:[Ljava/lang/String;
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_3

    .line 144
    const/4 v1, 0x5

    aget-object v1, v20, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 149
    .end local v15           #limits:Ljava/lang/String;
    .end local v20           #tokens2:[Ljava/lang/String;
    :cond_3
    const-string v1, "free"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 150
    .local v11, indexStop:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 151
    const-string v1, "\\s+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 153
    .local v19, tokens:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 154
    const/4 v1, 0x2

    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_0
.end method

.method private onLowMemory()V
    .locals 4

    .prologue
    .line 329
    iget-object v3, p0, Landroid/taobao/util/MemoryManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 330
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 333
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/util/MemoryManager$MemoryManagerListener;

    .line 334
    .local v2, val:Landroid/taobao/util/MemoryManager$MemoryManagerListener;
    invoke-interface {v2}, Landroid/taobao/util/MemoryManager$MemoryManagerListener;->onLowMemory()V

    goto :goto_0

    .line 336
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;>;"
    .end local v2           #val:Landroid/taobao/util/MemoryManager$MemoryManagerListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public Init(Landroid/app/Application;Ljava/lang/String;II)V
    .locals 2
    .parameter "cnt"
    .parameter "processName"
    .parameter "maxPercent"
    .parameter "thresholdPercent"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/taobao/util/MemoryManager;->mContext:Landroid/app/Application;

    .line 59
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/taobao/util/MemoryManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 60
    iput-object p2, p0, Landroid/taobao/util/MemoryManager;->mProcessName:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Landroid/taobao/util/MemoryManager;->mProcessName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/taobao/util/MemoryManager;->getProcessMemoryInfo(Ljava/lang/String;)Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-result-object v0

    .line 63
    .local v0, info:Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;
    iget v1, v0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_limit:I

    mul-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p3

    iput v1, p0, Landroid/taobao/util/MemoryManager;->mMaxMemory:I

    .line 64
    iget v1, v0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_limit:I

    mul-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p4

    iput v1, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    .line 65
    return-void
.end method

.method public addListener(Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;)V
    .locals 1
    .parameter "name"
    .parameter "listener"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/taobao/util/MemoryManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public getListenerMemorySize()I
    .locals 5

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, size:I
    iget-object v4, p0, Landroid/taobao/util/MemoryManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/util/MemoryManager$MemoryManagerListener;

    .line 231
    .local v3, val:Landroid/taobao/util/MemoryManager$MemoryManagerListener;
    invoke-interface {v3}, Landroid/taobao/util/MemoryManager$MemoryManagerListener;->onGetMemory()I

    move-result v4

    add-int/2addr v2, v4

    .line 232
    goto :goto_0

    .line 233
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;>;"
    .end local v3           #val:Landroid/taobao/util/MemoryManager$MemoryManagerListener;
    :cond_0
    return v2
.end method

.method public getMemoryInfo()Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Landroid/taobao/util/MemoryManager;->mProcessName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/taobao/util/MemoryManager;->getProcessMemoryInfo(Ljava/lang/String;)Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-result-object v0

    .line 208
    .local v0, info:Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;
    return-object v0
.end method

.method public getNativeResourceMemorySize()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/taobao/util/MemoryManager;->mContext:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/util/Dump;->getResourceMemorySize(Landroid/app/Application;)I

    move-result v0

    return v0
.end method

.method public getProcessID()I
    .locals 6

    .prologue
    .line 75
    iget-object v4, p0, Landroid/taobao/util/MemoryManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, appProcessList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 80
    .local v0, appProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Landroid/taobao/util/MemoryManager;->mProcessName:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 85
    .end local v0           #appProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getSystemAvailMemory()J
    .locals 4

    .prologue
    .line 193
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 194
    .local v2, temp:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Landroid/taobao/util/MemoryManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 195
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 196
    .local v0, freeSize:J
    return-wide v0
.end method

.method public getSystemTotalMemory()J
    .locals 8

    .prologue
    .line 167
    const-string v5, "/proc/meminfo"

    .line 170
    .local v5, str1:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 173
    .local v1, initial_memory:J
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, localFileReader:Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v3, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 176
    .local v3, localBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, str2:Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    int-to-long v1, v7

    .line 180
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0           #arrayOfString:[Ljava/lang/String;
    .end local v3           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .end local v6           #str2:Ljava/lang/String;
    :goto_0
    return-wide v1

    .line 182
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public lowMemoryInd()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/taobao/util/MemoryManager;->onLowMemory()V

    .line 321
    return-void
.end method

.method public memoryCheck()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    invoke-virtual {p0}, Landroid/taobao/util/MemoryManager;->getMemoryInfo()Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-result-object v0

    .line 291
    .local v0, info:Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;
    invoke-virtual {v0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v1

    iget v2, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    if-lt v1, v2, :cond_0

    .line 292
    sget-object v1, Landroid/taobao/util/MemoryManager;->TAG:Ljava/lang/String;

    const-string v2, "memory is over threshold! current is %d, threshold is %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/util/MemoryManager;->getMemoryInfo()Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v1

    iget v2, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    if-lt v1, v2, :cond_1

    .line 300
    sget-object v1, Landroid/taobao/util/MemoryManager;->TAG:Ljava/lang/String;

    const-string v2, "After gc , memory is still over threshold! current is %d, threshold is %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Landroid/taobao/util/MemoryManager;->lowMemoryInd()V

    .line 306
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/util/MemoryManager;->getMemoryInfo()Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v1

    iget v2, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    if-lt v1, v2, :cond_2

    .line 308
    sget-object v1, Landroid/taobao/util/MemoryManager;->TAG:Ljava/lang/String;

    const-string v2, "After application free , memory is still over threshold! current is %d, threshold is %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/taobao/util/MemoryManager;->mThresholdMemory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    return-void
.end method

.method public removeListener(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 257
    iget-object v0, p0, Landroid/taobao/util/MemoryManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method
