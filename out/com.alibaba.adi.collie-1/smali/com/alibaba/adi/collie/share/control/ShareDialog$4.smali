.class Lcom/alibaba/adi/collie/share/control/ShareDialog$4;
.super Ljava/lang/Thread;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/control/ShareDialog;->copy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    .line 217
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcLargeBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    const-string v3, "share_large_for_share"

    #calls: Lcom/alibaba/adi/collie/share/control/ShareDialog;->getPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$5(Lcom/alibaba/adi/collie/share/control/ShareDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, savePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcLargeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyFileFromBitmap2SDCardSync(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 223
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 224
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstLargeUri:Landroid/net/Uri;

    .line 227
    .end local v0           #res:Z
    .end local v1           #savePath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcAssetPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    const-string v3, "share_asset_for_share"

    #calls: Lcom/alibaba/adi/collie/share/control/ShareDialog;->getPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$5(Lcom/alibaba/adi/collie/share/control/ShareDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1       #savePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcAssetPath:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyfileFromAsset2SDCardSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 230
    .restart local v0       #res:Z
    if-eqz v0, :cond_1

    .line 231
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstSmallUri:Landroid/net/Uri;

    .line 234
    .end local v0           #res:Z
    .end local v1           #savePath:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcSmallBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    const-string v3, "share_small_for_share"

    #calls: Lcom/alibaba/adi/collie/share/control/ShareDialog;->getPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$5(Lcom/alibaba/adi/collie/share/control/ShareDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1       #savePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcSmallBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyFileFromBitmap2SDCardSync(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 237
    .restart local v0       #res:Z
    if-eqz v0, :cond_2

    .line 238
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstSmallUri:Landroid/net/Uri;

    .line 241
    .end local v0           #res:Z
    .end local v1           #savePath:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #calls: Lcom/alibaba/adi/collie/share/control/ShareDialog;->gotoShare()V
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$6(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    .line 242
    return-void
.end method
