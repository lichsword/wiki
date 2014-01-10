.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;
.super Ljava/lang/Object;
.source "ActionOpenShareDialog.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# instance fields
.field private activity:Landroid/app/Activity;

.field private pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 0
    .parameter "activity"
    .parameter "pushMsg"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 31
    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    .line 76
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 77
    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 38
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getStxt()Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, text:Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getSurl()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, link:Ljava/lang/String;
    const/4 v9, 0x0

    .line 41
    .local v9, v:Landroid/view/View;
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    instance-of v11, v11, Lcom/alibaba/adi/collie/ui/MainActivity;

    if-eqz v11, :cond_2

    .line 42
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    check-cast v4, Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 43
    .local v4, mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/MainActivity;->getMainView()Landroid/view/View;

    move-result-object v9

    .line 48
    .end local v4           #mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;
    :cond_0
    :goto_0
    sget-object v11, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02007f

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 50
    .local v3, logo:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v6

    .line 51
    .local v6, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    if-eqz v6, :cond_1

    .line 52
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v1

    .line 53
    .local v1, flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->attachScreenShot()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 55
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    invoke-static {v11, v8, v2, v9, v3}, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->shareViewCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 68
    .end local v1           #flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->release()V

    .line 69
    return-void

    .line 44
    .end local v3           #logo:Landroid/graphics/Bitmap;
    .end local v6           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    :cond_2
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    instance-of v11, v11, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    if-eqz v11, :cond_0

    .line 45
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    check-cast v10, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    .line 46
    .local v10, webNewsActivity:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;
    invoke-virtual {v10}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->getPageRootView()Landroid/view/View;

    move-result-object v9

    goto :goto_0

    .line 56
    .end local v10           #webNewsActivity:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;
    .restart local v1       #flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    .restart local v3       #logo:Landroid/graphics/Bitmap;
    .restart local v6       #msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->attachWebUrlImage()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 57
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getSimg()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, shareImgUrl:Ljava/lang/String;
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v5

    .line 59
    .local v5, manager:Lorg/lichsword/util/ImageManager;
    const-string v11, "push"

    invoke-virtual {v5, v7, v11}, Lorg/lichsword/util/ImageManager;->loadBitmapByUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    invoke-static {v11, v8, v2, v0, v3}, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->shareBitmapCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 61
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #manager:Lorg/lichsword/util/ImageManager;
    .end local v7           #shareImgUrl:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->attachNoImage()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 62
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->activity:Landroid/app/Activity;

    const/4 v12, 0x0

    invoke-static {v11, v8, v2, v12, v3}, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->shareBitmapCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 64
    :cond_5
    sget-object v11, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "flags with error attach image param:(flags="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
