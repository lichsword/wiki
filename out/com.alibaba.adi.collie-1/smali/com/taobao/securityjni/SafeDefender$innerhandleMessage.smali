.class Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;
.super Ljava/lang/Object;
.source "SafeDefender.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/securityjni/SafeDefender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "innerhandleMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/securityjni/SafeDefender;


# direct methods
.method private constructor <init>(Lcom/taobao/securityjni/SafeDefender;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;->this$0:Lcom/taobao/securityjni/SafeDefender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/securityjni/SafeDefender;Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;-><init>(Lcom/taobao/securityjni/SafeDefender;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;
    invoke-static {v0}, Lcom/taobao/securityjni/SafeDefender;->access$7(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;
    invoke-static {v0}, Lcom/taobao/securityjni/SafeDefender;->access$7(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;
    invoke-static {v1}, Lcom/taobao/securityjni/SafeDefender;->access$8(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/securityjni/SafeDefender$SuccessNotify;->onTokenDataGetted(Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;
    invoke-static {v0}, Lcom/taobao/securityjni/SafeDefender;->access$7(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;->this$0:Lcom/taobao/securityjni/SafeDefender;

    #getter for: Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;
    invoke-static {v0}, Lcom/taobao/securityjni/SafeDefender;->access$7(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/taobao/securityjni/SafeDefender$SuccessNotify;->onSignatureDataGetted(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x53414645
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
