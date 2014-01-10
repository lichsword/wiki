.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;
.super Ljava/lang/Object;
.source "BindAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountUnBind"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType:[I


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mLogo:Landroid/widget/ImageView;

.field private final mName:Landroid/widget/TextView;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mTitle:Landroid/widget/TextView;

.field private final mType:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType()[I
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->values()[Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->TAOBAO:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->WEIBO:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;Landroid/view/LayoutInflater;Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;)V
    .locals 5
    .parameter
    .parameter "inflater"
    .parameter "accountType"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mType:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    .line 287
    const v3, 0x7f0300a0

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    .line 289
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    const v4, 0x7f080200

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/view/DashedLine;

    .line 290
    .local v1, line:Lcom/alibaba/adi/collie/ui/view/DashedLine;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->setOrientation(I)V

    .line 291
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->postInvalidate()V

    .line 293
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    const v4, 0x7f0801ff

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mLogo:Landroid/widget/ImageView;

    .line 294
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    const v4, 0x7f08020b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mButton:Landroid/widget/Button;

    .line 295
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    const v4, 0x7f08020a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mTitle:Landroid/widget/TextView;

    .line 296
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    const v4, 0x7f080202

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mName:Landroid/widget/TextView;

    .line 297
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType()[I

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mType:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0a0115

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mLogo:Landroid/widget/ImageView;

    const v4, 0x7f0200a3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 301
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getLogin()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v2

    .line 303
    .local v2, result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mButton:Landroid/widget/Button;

    iget-object v4, p1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoUnbindClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 307
    .end local v2           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0a0116

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mLogo:Landroid/widget/ImageView;

    const v4, 0x7f0200a4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 309
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->getWeiboAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    move-result-object v0

    .line 310
    .local v0, account:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mButton:Landroid/widget/Button;

    iget-object v4, p1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mWeiboUnbindClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method attachToRoot(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    return-void
.end method
