.class public Lcom/taobao/statistic/core/d;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static jV:Ljava/lang/String;

.field private static jW:Z

.field private static jX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, "TBSEngine:"

    sput-object v0, Lcom/taobao/statistic/core/d;->jV:Ljava/lang/String;

    .line 23
    sput-boolean v1, Lcom/taobao/statistic/core/d;->jW:Z

    .line 24
    sput-boolean v1, Lcom/taobao/statistic/core/d;->jX:Z

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "logType"
    .parameter "level"
    .parameter "tag"
    .parameter "content"
    .parameter "tr"

    .prologue
    .line 44
    invoke-static {p3}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, sContent:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    .line 49
    sget-boolean v1, Lcom/taobao/statistic/core/d;->jW:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/taobao/statistic/core/d;->jX:Z

    if-eqz v1, :cond_0

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/statistic/core/d;->jV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    if-eqz p4, :cond_4

    .line 61
    invoke-static {p2, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 53
    sget-boolean v1, Lcom/taobao/statistic/core/d;->jW:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 63
    :cond_4
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :pswitch_1
    if-eqz p4, :cond_5

    .line 68
    invoke-static {p2, v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    :cond_5
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :pswitch_2
    if-eqz p4, :cond_6

    .line 75
    invoke-static {p2, v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    :cond_6
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :pswitch_3
    if-eqz p4, :cond_7

    .line 82
    invoke-static {p2, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    :cond_7
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_4
    if-eqz p4, :cond_8

    .line 89
    invoke-static {p2, v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    :cond_8
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "logType"
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/taobao/statistic/core/d;->a(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "logType"
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 106
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/taobao/statistic/core/d;->a(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public static c(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "logType"
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 114
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/taobao/statistic/core/d;->a(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public static i(Z)V
    .locals 0
    .parameter "isDev"

    .prologue
    .line 31
    sput-boolean p0, Lcom/taobao/statistic/core/d;->jW:Z

    .line 32
    return-void
.end method

.method public static j(Z)V
    .locals 0
    .parameter "isDebug"

    .prologue
    .line 39
    sput-boolean p0, Lcom/taobao/statistic/core/d;->jX:Z

    .line 40
    return-void
.end method
