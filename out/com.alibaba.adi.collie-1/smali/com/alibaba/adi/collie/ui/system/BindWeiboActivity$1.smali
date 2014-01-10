.class Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;
.super Landroid/os/Handler;
.source "BindWeiboActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindWeiboActivity$MessageType:[I


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindWeiboActivity$MessageType()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindWeiboActivity$MessageType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->values()[Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindWeiboActivity$MessageType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->values()[Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v1, v2, v3

    .line 55
    .local v1, type:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindWeiboActivity$MessageType()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 57
    :pswitch_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    .line 58
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 57
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, date:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTUpdateUserAccount(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u7ecf\u7ed1\u5b9a\u5fae\u535a\u5e10\u53f7 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u6709\u6548\u671f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->finish()V

    goto :goto_0

    .line 66
    .end local v0           #date:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    const-string v3, "\u7ed1\u5b9a\u5fae\u535a\u5e10\u53f7\u5931\u8d25"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->finish()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
