.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;
.super Ljava/lang/Object;
.source "SystemNoticeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartWeiboPrivateMsg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field weiboId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "weiboId"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->weiboId:Ljava/lang/String;

    .line 600
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 606
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->weiboId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/business/weibo/api/ActivityInvokeAPI;->openMessageListByUid(Landroid/app/Activity;Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v3, "http://weibo.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 612
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 613
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 615
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method
