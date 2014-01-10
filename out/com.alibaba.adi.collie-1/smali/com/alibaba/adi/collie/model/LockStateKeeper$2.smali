.class Lcom/alibaba/adi/collie/model/LockStateKeeper$2;
.super Ljava/lang/Object;
.source "LockStateKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/LockStateKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/model/LockStateKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$2;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$2;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    #calls: Lcom/alibaba/adi/collie/model/LockStateKeeper;->showLockedNotification()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$5(Lcom/alibaba/adi/collie/model/LockStateKeeper;)V

    .line 94
    return-void
.end method
