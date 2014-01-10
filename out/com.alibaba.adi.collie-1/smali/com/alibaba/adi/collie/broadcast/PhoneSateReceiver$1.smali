.class Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneSateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver$1;->this$0:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    .line 46
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " incomingNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver$1;->this$0:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    const/4 v1, 0x1

    #setter for: Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->access$0(Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;Z)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver$1;->this$0:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->access$0(Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;Z)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
