.class Lcom/alibaba/adi/collie/service/AdiKeyGuardService$2;
.super Ljava/lang/Object;
.source "AdiKeyGuardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/service/AdiKeyGuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$2;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "xhh user present disable"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->disableKeyguard()V

    .line 378
    return-void
.end method
