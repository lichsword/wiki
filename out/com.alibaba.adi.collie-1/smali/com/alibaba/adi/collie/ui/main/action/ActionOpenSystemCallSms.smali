.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;
.super Ljava/lang/Object;
.source "ActionOpenSystemCallSms.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# static fields
.field public static final CALL:I = 0x2

.field public static final SMS:I = 0x0

.field public static final SMS_THREAD:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter "type"
    .parameter "number"
    .parameter "activity"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mNumber:Ljava/lang/String;

    .line 24
    iput p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mType:I

    .line 25
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private startCall()V
    .locals 4

    .prologue
    .line 66
    const-string v1, "CallBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms$1;-><init>(Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 78
    return-void
.end method

.method private startSms()V
    .locals 4

    .prologue
    .line 58
    const-string v1, "SmsBack"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 63
    return-void
.end method

.method private startSmsThread()V
    .locals 4

    .prologue
    .line 81
    const-string v2, "UnreadSms"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://mms-sms/conversations/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 87
    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 53
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "ActionSmsBack"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "ActionOpenSms"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "ActionCallBack"

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 32
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->startSms()V

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->startSmsThread()V

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenSystemCallSms;->startCall()V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
