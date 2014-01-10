.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;
.super Landroid/os/AsyncTask;
.source "BindTaobaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->onLoginWithCheckCode(Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

.field private final synthetic val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;->this$1:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;->val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    .line 376
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "voids"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;->val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/ImageUtil;->downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 385
    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;->this$1:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$13(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
