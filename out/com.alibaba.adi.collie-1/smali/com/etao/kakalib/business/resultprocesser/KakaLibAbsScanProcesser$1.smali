.class Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;
.super Ljava/lang/Object;
.source "KakaLibAbsScanProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->handleDecodeResult(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iput-object p2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->val$result:Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->onGetReqestApi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, r:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v1, v1, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->onDecodeFailed(Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v1, v1, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->onDecodeSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
