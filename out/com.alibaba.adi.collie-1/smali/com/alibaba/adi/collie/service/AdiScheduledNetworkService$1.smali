.class Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$1;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$1;->this$0:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    const-string v1, "news"

    .line 250
    const/16 v2, 0xa

    .line 249
    invoke-virtual {v0, v1, v2}, Lorg/lichsword/util/ImageManager;->cleanCache(Ljava/lang/String;I)V

    .line 251
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    const-string v1, "joke"

    .line 252
    const/16 v2, 0xf

    .line 251
    invoke-virtual {v0, v1, v2}, Lorg/lichsword/util/ImageManager;->cleanCache(Ljava/lang/String;I)V

    .line 253
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    .line 254
    const-string v1, "tao"

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lorg/lichsword/util/ImageManager;->cleanCache(Ljava/lang/String;J)V

    .line 255
    return-void
.end method
