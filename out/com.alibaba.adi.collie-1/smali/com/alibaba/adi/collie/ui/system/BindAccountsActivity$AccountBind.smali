.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;
.super Ljava/lang/Object;
.source "BindAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountBind"
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
    .line 234
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;Landroid/view/LayoutInflater;Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;)V
    .locals 4
    .parameter
    .parameter "inflater"
    .parameter "accountType"

    .prologue
    const v3, 0x7f0a0113

    .line 242
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mType:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    .line 244
    const v1, 0x7f03009d

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    .line 246
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f080200

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DashedLine;

    .line 247
    .local v0, line:Lcom/alibaba/adi/collie/ui/view/DashedLine;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->setOrientation(I)V

    .line 248
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->postInvalidate()V

    .line 250
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f0801ff

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mLogo:Landroid/widget/ImageView;

    .line 251
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f080201

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mTitle:Landroid/widget/TextView;

    .line 252
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f080203

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mButton:Landroid/widget/Button;

    .line 253
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f080202

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mName:Landroid/widget/TextView;

    .line 254
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$system$BindAccountsActivity$AccountType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mType:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mLogo:Landroid/widget/ImageView;

    const v2, 0x7f0200b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mButton:Landroid/widget/Button;

    iget-object v2, p1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoBindClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0116

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mLogo:Landroid/widget/ImageView;

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mButton:Landroid/widget/Button;

    iget-object v2, p1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mWeiboBindClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 254
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
    .line 273
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    return-void
.end method
