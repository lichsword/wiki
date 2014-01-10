.class Lcom/alibaba/adi/collie/share/control/ShareDialog$5;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/control/ShareDialog;->startShare()V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 301
    const/16 v17, 0x1

    .line 302
    .local v17, res:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstSmallUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$8(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a004a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v4}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    .line 305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v5}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstSmallUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v6}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    const/16 v7, 0x48

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 304
    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->shareHypeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 398
    :cond_0
    :goto_0
    if-nez v17, :cond_14

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v2

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v6}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/share/control/Share;->getShareName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 401
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 402
    const/4 v4, 0x0

    .line 399
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 409
    :goto_1
    return-void

    .line 307
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$8(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v4}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->shareText(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstSmallUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$8(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v4}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->shareText(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 313
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$8(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v5}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstSmallUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 314
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v6}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    const/16 v7, 0x48

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 313
    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->shareHypeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_0

    .line 316
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 317
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v12, bundle:Landroid/os/Bundle;
    const-string v2, "title"

    const-string v3, "\u9501\u5c4f\u5b9d\uff0c\u70b9\u4eae\u6709\u60ca\u559c\uff01"

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstLargeUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstLargeUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 322
    const-string v2, "imageLocalUrl"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstLargeUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_5
    const-string v2, "targetUrl"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "summary"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "site"

    const-string v3, "\u9501\u5c4f\u5b9d100583790"

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "appName"

    const-string v3, "\u9501\u5c4f\u5b9d"

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareQQ:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$9(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->share2QQ(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 333
    .end local v12           #bundle:Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    .line 336
    :cond_7
    const-string v24, "\u9501\u5c4f\u5b9d\uff0c\u70b9\u4eae\u6709\u60ca\u559c\uff01"

    .line 337
    .local v24, title:Ljava/lang/String;
    const-string v2, "Page_Share"

    const-string v3, "\u9501\u5c4f\u5b9d"

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v4}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v7}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 337
    invoke-static/range {v2 .. v10}, Lcom/ut/share/component/ShareAPIHelper;->genShareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/util/Map;)Lcom/ut/share/data/ShareData;

    move-result-object v13

    .line 339
    .local v13, data:Lcom/ut/share/data/ShareData;
    sget-object v2, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    const-string v3, "k_title"

    move-object/from16 v0, v24

    invoke-virtual {v13, v2, v3, v0}, Lcom/ut/share/data/ShareData;->addCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    sget-object v2, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    const-string v3, "k_title"

    move-object/from16 v0, v24

    invoke-virtual {v13, v2, v3, v0}, Lcom/ut/share/data/ShareData;->addCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    sget-object v2, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    const-string v3, "k_title"

    move-object/from16 v0, v24

    invoke-virtual {v13, v2, v3, v0}, Lcom/ut/share/data/ShareData;->addCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcLargeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v2}, Lcom/ut/share/data/ShareData;->setPic(Landroid/graphics/Bitmap;)V

    .line 345
    new-instance v21, Lcom/ut/share/component/ShareProcessor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v13}, Lcom/ut/share/component/ShareProcessor;-><init>(Landroid/app/Activity;Lcom/ut/share/data/ShareData;)V

    .line 346
    .local v21, shareProcessor:Lcom/ut/share/component/ShareProcessor;
    const-string v2, "laiwangb23e3608b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ut/share/component/ShareProcessor;->setLaiwangAppID(Ljava/lang/String;)V

    .line 347
    const-string v2, "b23e3608b8eb4c35a2d02996bc69499c "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ut/share/component/ShareProcessor;->setLaiwangSecretID(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {v21 .. v21}, Lcom/ut/share/component/ShareProcessor;->retrieveShareAppList()Ljava/util/List;

    move-result-object v11

    .line 350
    .local v11, appList:Ljava/util/List;,"Ljava/util/List<Lcom/ut/share/data/ShareAppInfo;>;"
    const/16 v20, 0x0

    .line 351
    .local v20, shareLaiwangChat:Lcom/ut/share/data/ShareAppInfo;
    const/16 v19, 0x0

    .line 352
    .local v19, shareLaiwang:Lcom/ut/share/data/ShareAppInfo;
    const/16 v23, 0x0

    .line 353
    .local v23, shareWangxin:Lcom/ut/share/data/ShareAppInfo;
    const/16 v22, 0x0

    .line 354
    .local v22, shareSms:Lcom/ut/share/data/ShareAppInfo;
    const/16 v18, 0x0

    .line 356
    .local v18, shareCopy:Lcom/ut/share/data/ShareAppInfo;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    .line 371
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    goto/16 :goto_0

    .line 356
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ut/share/data/ShareAppInfo;

    .line 357
    .local v15, info:Lcom/ut/share/data/ShareAppInfo;
    invoke-virtual {v15}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    sget-object v4, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    if-ne v3, v4, :cond_a

    .line 358
    move-object/from16 v20, v15

    .line 359
    goto :goto_2

    :cond_a
    invoke-virtual {v15}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    sget-object v4, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    if-ne v3, v4, :cond_b

    .line 360
    move-object/from16 v19, v15

    .line 361
    goto :goto_2

    :cond_b
    invoke-virtual {v15}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    sget-object v4, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    if-ne v3, v4, :cond_c

    .line 362
    move-object/from16 v23, v15

    .line 363
    goto :goto_2

    :cond_c
    invoke-virtual {v15}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    sget-object v4, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    if-ne v3, v4, :cond_d

    .line 364
    move-object/from16 v22, v15

    .line 365
    goto :goto_2

    :cond_d
    invoke-virtual {v15}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    sget-object v4, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    if-ne v3, v4, :cond_8

    .line 366
    move-object/from16 v18, v15

    goto :goto_2

    .line 372
    .end local v15           #info:Lcom/ut/share/data/ShareAppInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 373
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    goto/16 :goto_0

    .line 374
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    .line 375
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    goto/16 :goto_0

    .line 376
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11

    .line 377
    invoke-virtual/range {v21 .. v22}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    goto/16 :goto_0

    .line 378
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 379
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    goto/16 :goto_0

    .line 382
    .end local v11           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/ut/share/data/ShareAppInfo;>;"
    .end local v13           #data:Lcom/ut/share/data/ShareData;
    .end local v18           #shareCopy:Lcom/ut/share/data/ShareAppInfo;
    .end local v19           #shareLaiwang:Lcom/ut/share/data/ShareAppInfo;
    .end local v20           #shareLaiwangChat:Lcom/ut/share/data/ShareAppInfo;
    .end local v21           #shareProcessor:Lcom/ut/share/component/ShareProcessor;
    .end local v22           #shareSms:Lcom/ut/share/data/ShareAppInfo;
    .end local v23           #shareWangxin:Lcom/ut/share/data/ShareAppInfo;
    .end local v24           #title:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v3, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    .line 383
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v16, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/Share;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v4}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/share/control/Share;->activityName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 385
    const-string v2, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstLargeUri:Landroid/net/Uri;

    if-nez v2, :cond_13

    .line 387
    const-string v2, "text/plain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 394
    :catch_0
    move-exception v14

    .line 395
    .local v14, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 389
    .end local v14           #e:Ljava/lang/Exception;
    :cond_13
    const-string v2, "image/*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/ShareData;->mDstLargeUri:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 405
    .end local v16           #intent:Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v2

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 407
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;
    invoke-static {v6}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/share/control/Share;->getShareName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 406
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 407
    const/4 v4, 0x0

    .line 404
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
