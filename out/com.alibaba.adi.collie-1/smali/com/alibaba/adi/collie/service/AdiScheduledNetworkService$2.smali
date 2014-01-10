.class Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$2;
.super Ljava/lang/Object;
.source "AdiScheduledNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$2;->this$0:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsgOutofDate()V

    .line 261
    return-void
.end method
