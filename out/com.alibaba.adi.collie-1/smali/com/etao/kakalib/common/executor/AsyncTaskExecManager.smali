.class public final Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;
.super Lcom/etao/kakalib/util/common/PlatformSupportManager;
.source "AsyncTaskExecManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etao/kakalib/util/common/PlatformSupportManager",
        "<",
        "Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    new-instance v1, Lcom/etao/kakalib/common/executor/DefaultAsyncTaskExecInterface;

    invoke-direct {v1}, Lcom/etao/kakalib/common/executor/DefaultAsyncTaskExecInterface;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/etao/kakalib/util/common/PlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 25
    const/16 v0, 0xb

    .line 26
    const-string v1, "com.etao.kakalib.common.executor.HoneycombAsyncTaskExecInterface"

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;->addImplementationClass(ILjava/lang/String;)V

    .line 27
    return-void
.end method
