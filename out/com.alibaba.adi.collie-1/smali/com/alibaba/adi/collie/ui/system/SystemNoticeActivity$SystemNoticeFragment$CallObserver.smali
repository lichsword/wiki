.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;
.super Landroid/database/ContentObserver;
.source "SystemNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 781
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    .line 782
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 783
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 788
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh call changed"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->loadWhenDBChanged()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$14(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    .line 790
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 793
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 795
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 798
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 799
    return-void
.end method
