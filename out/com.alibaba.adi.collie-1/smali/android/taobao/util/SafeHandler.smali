.class public Landroid/taobao/util/SafeHandler;
.super Landroid/os/Handler;
.source "SafeHandler.java"


# static fields
.field static isDebugMode:Z

.field static random:Ljava/util/Random;

.field static uploadPercent:I


# instance fields
.field private isAlive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    sput-boolean v3, Landroid/taobao/util/SafeHandler;->isDebugMode:Z

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Landroid/taobao/util/SafeHandler;->random:Ljava/util/Random;

    .line 17
    sput v3, Landroid/taobao/util/SafeHandler;->uploadPercent:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .parameter "looper"
    .parameter "callback"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    .line 50
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 19
    sput-boolean p0, Landroid/taobao/util/SafeHandler;->isDebugMode:Z

    .line 20
    return-void
.end method

.method public static setExceptionUpLoadPercent(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 23
    sput p0, Landroid/taobao/util/SafeHandler;->uploadPercent:I

    .line 24
    return-void
.end method


# virtual methods
.method public clearMsg(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    iput v0, p1, Landroid/os/Message;->what:I

    .line 86
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 88
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 91
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    .line 95
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 62
    iget-boolean v2, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-boolean v2, Landroid/taobao/util/SafeHandler;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 66
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 81
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Landroid/taobao/util/SafeHandler;->clearMsg(Landroid/os/Message;)V

    goto :goto_0

    .line 69
    :cond_2
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    sget-object v2, Landroid/taobao/util/SafeHandler;->random:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 74
    .local v1, ran:I
    const-string v2, "System.err"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "random:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threashold:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/taobao/util/SafeHandler;->uploadPercent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget v2, Landroid/taobao/util/SafeHandler;->uploadPercent:I

    if-ge v1, v2, :cond_1

    .line 76
    invoke-static {v0}, Lcom/taobao/statistic/TBS$Adv;->onCaughException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/taobao/util/SafeHandler;->isAlive:Z

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method
