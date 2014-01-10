.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;
.super Ljava/lang/Object;
.source "KakaLibDecodeResultAccessMtopProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;

.field private final synthetic val$result:Lcom/etao/kakalib/api/beans/MailTraceWrapper;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;Lcom/etao/kakalib/api/beans/MailTraceWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;

    iput-object p2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    .local v0, decodeResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/etao/kakalib/express/ExpressResult;>;"
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->getBarCode()Ljava/lang/String;

    move-result-object v2

    .line 151
    const/4 v3, 0x1

    .line 149
    invoke-virtual {v1, v2, v0, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showExpressDialog(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 152
    return-void
.end method
