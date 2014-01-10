.class public Lcom/ut/share/executor/ExecutorFactory;
.super Ljava/lang/Object;
.source "ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/share/executor/ExecutorFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;
    .locals 4
    .parameter "context"
    .parameter "spt"
    .parameter "weixin"
    .parameter "wangxin"
    .parameter "laiwang"

    .prologue
    const/4 v3, 0x0

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, exe:Lcom/ut/share/executor/Executor;
    sget-object v1, Lcom/ut/share/executor/ExecutorFactory$1;->py:[I

    invoke-virtual {p1}, Lcom/ut/share/SharePlatform;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 47
    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/ut/share/executor/LaiwangExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p4, v1}, Lcom/ut/share/executor/LaiwangExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/a;Z)V

    .line 17
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/ut/share/executor/LaiwangExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1, p4, v3}, Lcom/ut/share/executor/LaiwangExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/a;Z)V

    .line 20
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 22
    :pswitch_2
    new-instance v0, Lcom/ut/share/executor/LaiwangExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1, p4, v3}, Lcom/ut/share/executor/LaiwangExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/a;Z)V

    .line 23
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 25
    :pswitch_3
    new-instance v0, Lcom/ut/share/executor/CopyExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1}, Lcom/ut/share/executor/CopyExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 26
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 28
    :pswitch_4
    new-instance v0, Lcom/ut/share/executor/MessageExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1}, Lcom/ut/share/executor/MessageExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 29
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 31
    :pswitch_5
    new-instance v0, Lcom/ut/share/executor/WeixinExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1, p2}, Lcom/ut/share/executor/WeixinExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;)V

    .line 32
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 34
    :pswitch_6
    new-instance v0, Lcom/ut/share/executor/WeixinPengyouExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1, p2}, Lcom/ut/share/executor/WeixinPengyouExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;)V

    .line 35
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 37
    :pswitch_7
    new-instance v0, Lcom/ut/share/executor/WangxinExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1, p3}, Lcom/ut/share/executor/WangxinExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/b;)V

    .line 38
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 42
    :pswitch_8
    new-instance v0, Lcom/ut/share/executor/ThirdpartsExecutor;

    .end local v0           #exe:Lcom/ut/share/executor/Executor;
    invoke-direct {v0, p0, p1}, Lcom/ut/share/executor/ThirdpartsExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 43
    .restart local v0       #exe:Lcom/ut/share/executor/Executor;
    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
