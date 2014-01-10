.class Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;
.super Ljava/lang/Object;
.source "TaobaoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$0(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/view/ChartView;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/YuebaoCache;->captureChartView(Lcom/alibaba/adi/collie/ui/view/ChartView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    .local v0, cachedBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 346
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$0(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/view/ChartView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->setBitmapCache(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0           #cachedBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$1(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$1(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->requestLayout()V

    .line 356
    :cond_1
    return-void

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception caught when trying to cache ChartView: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
