.class public Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
.super Landroid/widget/BaseAdapter;
.source "SystemNoticeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;,
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$model$SystemNoticeData$SystemTag:[I = null

.field public static final TAG:Ljava/lang/String; = null

.field static final mWeiboUrl:Ljava/lang/String; = "http://weibo.com"


# instance fields
.field public callCount:I

.field private fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

.field private mActivity:Landroid/app/Activity;

.field private final mAnimation:Landroid/view/animation/Animation;

.field private mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

.field private mShowSms:Z

.field private mShowWeibo:Z

.field mStartWeibo:Landroid/view/View$OnClickListener;

.field public smsCount:I

.field public tArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$model$SystemNoticeData$SystemTag()[I
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$model$SystemNoticeData$SystemTag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->values()[Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SYSTEM_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_PRIVATE_MSG_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_PRIVATE_MSG_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_UNBIND:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$model$SystemNoticeData$SystemTag:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->TAG:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;Landroid/app/Activity;Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;)V
    .locals 1
    .parameter "dataCollection"
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    .line 576
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$1;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mStartWeibo:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setData(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;)V

    .line 68
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    .line 69
    const v0, 0x7f040017

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->refresh()Z

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    return-object v0
.end method

.method private getCommentView(Lcom/alibaba/adi/collie/model/weibo/WeiboComment;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;
    .locals 13
    .parameter "at"
    .parameter "tag"

    .prologue
    .line 517
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f03004e

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 518
    .local v6, v:Landroid/view/View;
    const v7, 0x7f08012b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const-string v3, "\uff1a "

    .line 520
    .local v3, sep:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getUser()Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, content:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getUser()Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 522
    .local v1, name:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 525
    .local v5, spannableContent:Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 526
    new-instance v7, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 527
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, -0x4c000001

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 528
    const/16 v10, 0x21

    .line 527
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 531
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 532
    const/16 v10, 0x21

    .line 531
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 533
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, -0x4c000001

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 534
    const/16 v10, 0x21

    .line 533
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 537
    const v7, 0x7f08000f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const-string v4, ""

    .line 541
    .local v4, source:Ljava/lang/String;
    sget-object v7, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    if-ne v7, p2, :cond_2

    .line 542
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getReplyComment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 543
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0a007b

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 544
    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getReplyComment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mStartWeibo:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    return-object v6

    .line 547
    :cond_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0a007a

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 548
    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getStatus()Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :cond_2
    sget-object v7, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    if-ne v7, p2, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getStatus()Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getStatus()Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->getUser()Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getStatus()Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 557
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getRetweetedStatus()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, retweetedStatus:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 559
    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 561
    :cond_4
    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    const v7, 0x7f080102

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getPrivateMsgView(Ljava/util/List;)Landroid/view/View;
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;"
    const-string v12, "\uff1a "

    .line 447
    .local v12, sep:Ljava/lang/String;
    const/4 v14, 0x0

    .line 449
    .local v14, subView:Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    move-object v15, v14

    .line 513
    .end local v14           #subView:Landroid/view/View;
    .local v15, subView:Landroid/view/View;
    :goto_0
    return-object v15

    .line 452
    .end local v15           #subView:Landroid/view/View;
    .restart local v14       #subView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mShowWeibo:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 453
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;

    .line 454
    .local v6, msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f030052

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 455
    const v17, 0x7f08002c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getCreatedAt()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 456
    const/16 v22, 0x1

    .line 455
    invoke-static/range {v18 .. v22}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderScreenName()Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, senderScreenName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 459
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 461
    :cond_2
    const v17, 0x7f0800f2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    new-instance v17, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderId()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v15, v14

    .line 463
    .end local v14           #subView:Landroid/view/View;
    .restart local v15       #subView:Landroid/view/View;
    goto/16 :goto_0

    .line 465
    .end local v6           #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    .end local v11           #senderScreenName:Ljava/lang/String;
    .end local v15           #subView:Landroid/view/View;
    .restart local v14       #subView:Landroid/view/View;
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 466
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;

    .line 467
    .restart local v6       #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f030050

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 468
    const v17, 0x7f08002c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getCreatedAt()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 469
    const/16 v22, 0x1

    .line 468
    invoke-static/range {v18 .. v22}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderScreenName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 471
    .local v10, privateContent:Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableString;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderScreenName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 472
    .local v8, name:Landroid/text/SpannableString;
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 476
    .local v13, spannableContent:Landroid/text/SpannableString;
    new-instance v17, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v18, 0xd

    const/16 v19, 0x1

    invoke-direct/range {v17 .. v19}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v18, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 477
    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v18, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 478
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    const v18, -0x4c000001

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v19

    .line 479
    const/16 v20, 0x21

    .line 478
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 482
    new-instance v17, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v18, 0xd

    const/16 v19, 0x1

    invoke-direct/range {v17 .. v19}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v18

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v19

    .line 483
    const/16 v20, 0x21

    .line 482
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 484
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    const v18, -0x4c000001

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v18

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v19

    .line 485
    const/16 v20, 0x21

    .line 484
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 488
    const v17, 0x7f08000f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    new-instance v17, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderId()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v6           #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    .end local v8           #name:Landroid/text/SpannableString;
    .end local v10           #privateContent:Ljava/lang/String;
    .end local v13           #spannableContent:Landroid/text/SpannableString;
    :cond_4
    move-object v15, v14

    .line 513
    .end local v14           #subView:Landroid/view/View;
    .restart local v15       #subView:Landroid/view/View;
    goto/16 :goto_0

    .line 491
    .end local v15           #subView:Landroid/view/View;
    .restart local v14       #subView:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f030051

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 492
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderScreenName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, " ("

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, name:Ljava/lang/String;
    const v17, 0x7f080131

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const v17, 0x7f080132

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 496
    .local v7, msgContainer:Landroid/widget/FrameLayout;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_4

    .line 497
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;

    .line 498
    .restart local v6       #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f030050

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 499
    .local v16, v:Landroid/view/View;
    const v17, 0x7f08002c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getCreatedAt()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 500
    const/16 v22, 0x1

    .line 499
    invoke-static/range {v18 .. v22}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    const-string v9, ""

    .line 502
    .local v9, prefix:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 503
    new-instance v17, Ljava/lang/StringBuilder;

    add-int/lit8 v18, v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 505
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, content:Ljava/lang/String;
    const v17, 0x7f08000f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    new-instance v17, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderId()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$StartWeiboPrivateMsg;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method private inflateView(Lcom/alibaba/adi/collie/model/SystemNoticeData;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;
    .locals 27
    .parameter "data"
    .parameter "tag"

    .prologue
    .line 159
    const/16 v20, 0x0

    .line 160
    .local v20, subView:Landroid/view/View;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$model$SystemNoticeData$SystemTag()[I

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    :pswitch_0
    return-object v20

    .line 171
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f03004c

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 172
    goto :goto_0

    .line 175
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->smsCount:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f030040

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 178
    const v23, 0x7f080104

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 179
    .local v19, smsSummary:Landroid/widget/TextView;
    const-string v23, "system_show_guide"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->smsCount:I

    move/from16 v23, v0

    if-lez v23, :cond_1

    .line 181
    const-string v23, "adi_lock_privacy_sms_key"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_2

    .line 182
    const v23, 0x7f0800fe

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 183
    .local v15, privacyHint:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    const v23, 0x7f080101

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 185
    .local v10, confirmLayout:Landroid/widget/ImageView;
    const v23, 0x7f080100

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 186
    .local v11, hintText:Landroid/widget/LinearLayout;
    new-instance v23, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v23, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$3;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .end local v10           #confirmLayout:Landroid/widget/ImageView;
    .end local v11           #hintText:Landroid/widget/LinearLayout;
    .end local v15           #privacyHint:Landroid/widget/LinearLayout;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a0095

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->smsCount:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget-object v23, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "smsCount:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->smsCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->smsCount:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 216
    const v23, 0x7f080109

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 217
    .local v12, line:Landroid/view/View;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 208
    .end local v12           #line:Landroid/view/View;
    :cond_2
    const-string v23, "system_show_guide"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    goto :goto_1

    .line 222
    .end local v19           #smsSummary:Landroid/widget/TextView;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 223
    .local v18, smsList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setSmsItem(Ljava/util/List;)Landroid/view/View;

    move-result-object v20

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 229
    .end local v18           #smsList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;"
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->callCount:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f030035

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 231
    const v23, 0x7f0800e6

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 232
    .local v6, callSummary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a0097

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->callCount:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    sget-object v23, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "callCount:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->callCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->callCount:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 237
    const v23, 0x7f080109

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 238
    .restart local v12       #line:Landroid/view/View;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 243
    .end local v6           #callSummary:Landroid/widget/TextView;
    .end local v12           #line:Landroid/view/View;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 244
    .local v5, callList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setCallItem(Ljava/util/List;)Landroid/view/View;

    move-result-object v20

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 250
    .end local v5           #callList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;"
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f030054

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 252
    .local v22, weiboMsgCount:I
    const v23, 0x7f080133

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 253
    .local v21, weiboCountView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a009a

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 257
    .end local v21           #weiboCountView:Landroid/widget/TextView;
    .end local v22           #weiboMsgCount:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 258
    .local v3, atCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f03004a

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 259
    const v23, 0x7f080129

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 260
    .local v4, atSummary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a0075

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 264
    .end local v3           #atCount:I
    .end local v4           #atSummary:Landroid/widget/TextView;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 265
    .local v8, commentCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f03004b

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 266
    const v23, 0x7f080122

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 267
    .local v9, commentSummary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a0076

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    .end local v8           #commentCount:I
    .end local v9           #commentSummary:Landroid/widget/TextView;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 272
    .local v16, privateCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f030053

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 273
    const v23, 0x7f080126

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 274
    .local v17, privateMsgSummary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a0077

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    .end local v16           #privateCount:I
    .end local v17           #privateMsgSummary:Landroid/widget/TextView;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f030055

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 279
    const v23, 0x7f08011a

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 280
    .local v13, mBindWeiboBtn:Landroid/widget/LinearLayout;
    new-instance v23, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$4;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 292
    .end local v13           #mBindWeiboBtn:Landroid/widget/LinearLayout;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    .line 293
    .local v2, at:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    sget-object v23, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getCommentView(Lcom/alibaba/adi/collie/model/weibo/WeiboComment;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;

    move-result-object v20

    .line 294
    goto/16 :goto_0

    .line 297
    .end local v2           #at:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    .line 298
    .local v7, comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    sget-object v23, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v7, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getCommentView(Lcom/alibaba/adi/collie/model/weibo/WeiboComment;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;

    move-result-object v20

    .line 299
    goto/16 :goto_0

    .line 302
    .end local v7           #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 303
    .local v14, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getPrivateMsgView(Ljava/util/List;)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCallItem(Ljava/util/List;)Landroid/view/View;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/CallData;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, callList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 388
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/CallData;

    .line 389
    .local v0, call:Lcom/alibaba/adi/collie/model/CallData;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/CallData;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, callAddress:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v12, :cond_0

    .line 391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    :cond_0
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v10, 0x7f03003a

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 394
    .local v8, subView:Landroid/view/View;
    const v9, 0x7f0800f3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 395
    .local v5, iconUpDown:Landroid/widget/ImageView;
    const v9, 0x7f0800f2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const v9, 0x7f08002c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/CallData;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11, v11, v11, v12}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const v9, 0x7f0800e6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 399
    .local v3, callInfo:Landroid/widget/RelativeLayout;
    const v9, 0x7f0800f4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 401
    .local v4, callOperation:Landroid/widget/LinearLayout;
    const v9, 0x7f0800f5

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 402
    .local v2, callBackLayout:Landroid/widget/LinearLayout;
    const v9, 0x7f0800f7

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 403
    .local v7, smsBackLayout:Landroid/widget/LinearLayout;
    const v9, 0x7f0800f6

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/ui/view/DashedLine;

    .line 404
    .local v6, lineSpliter:Lcom/alibaba/adi/collie/ui/view/DashedLine;
    invoke-virtual {v6, v12}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->setOrientation(I)V

    .line 405
    new-instance v9, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$7;

    invoke-direct {v9, p0, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$7;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Lcom/alibaba/adi/collie/model/CallData;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    new-instance v9, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;

    invoke-direct {v9, p0, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$8;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Lcom/alibaba/adi/collie/model/CallData;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 424
    new-instance v9, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;

    invoke-direct {v9, p0, v4, v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    return-object v8
.end method

.method private setSmsItem(Ljava/util/List;)Landroid/view/View;
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/SmsData;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, smsList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 313
    .local v6, listSize:I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/adi/collie/model/SmsData;

    invoke-virtual {v13}, Lcom/alibaba/adi/collie/model/SmsData;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, smsAddress:Ljava/lang/String;
    const/4 v13, 0x1

    if-le v6, v13, :cond_0

    .line 315
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 318
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mShowSms:Z

    if-nez v13, :cond_1

    .line 319
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/adi/collie/model/SmsData;

    .line 320
    .local v10, smsData:Lcom/alibaba/adi/collie/model/SmsData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f030039

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 321
    .local v11, subView:Landroid/view/View;
    const v13, 0x7f08002c

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/alibaba/adi/collie/model/SmsData;->getDate()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 322
    const/16 v18, 0x1

    .line 321
    invoke-static/range {v14 .. v18}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v13, 0x7f0800f2

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    new-instance v13, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$5;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/util/List;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v12, v11

    .line 383
    .end local v10           #smsData:Lcom/alibaba/adi/collie/model/SmsData;
    .end local v11           #subView:Landroid/view/View;
    .local v12, subView:Landroid/view/View;
    :goto_0
    return-object v12

    .line 337
    .end local v12           #subView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f03003b

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 338
    .restart local v11       #subView:Landroid/view/View;
    const v13, 0x7f0800f2

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const v13, 0x7f0800f9

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 340
    .local v4, contentView:Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    const v13, 0x7f08002c

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 344
    .local v7, nameDate:Landroid/widget/TextView;
    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    .line 346
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    if-lt v5, v6, :cond_2

    .line 372
    .end local v5           #k:I
    :goto_2
    new-instance v13, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$6;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Ljava/util/List;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v12, v11

    .line 383
    .end local v11           #subView:Landroid/view/View;
    .restart local v12       #subView:Landroid/view/View;
    goto :goto_0

    .line 351
    .end local v12           #subView:Landroid/view/View;
    .restart local v5       #k:I
    .restart local v11       #subView:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/adi/collie/model/SmsData;

    .line 352
    .local v8, sms:Lcom/alibaba/adi/collie/model/SmsData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f03003d

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 353
    .local v2, contentItem:Landroid/view/View;
    const-string v3, ""

    .line 354
    .local v3, contentPrefix:Ljava/lang/String;
    const v13, 0x7f08002c

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/SmsData;->getDate()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 355
    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 354
    invoke-static/range {v14 .. v18}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const v13, 0x7f08000f

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/SmsData;->getBody()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 361
    .end local v2           #contentItem:Landroid/view/View;
    .end local v3           #contentPrefix:Ljava/lang/String;
    .end local v5           #k:I
    .end local v8           #sms:Lcom/alibaba/adi/collie/model/SmsData;
    :cond_3
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/adi/collie/model/SmsData;

    .line 363
    .restart local v8       #sms:Lcom/alibaba/adi/collie/model/SmsData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f03003d

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 364
    .restart local v2       #contentItem:Landroid/view/View;
    const-string v3, ""

    .line 365
    .restart local v3       #contentPrefix:Ljava/lang/String;
    const v13, 0x7f08002c

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/SmsData;->getDate()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 366
    const/16 v18, 0x1

    .line 365
    invoke-static/range {v14 .. v18}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const v13, 0x7f08000f

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/model/SmsData;->getBody()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCallIndex()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->callIndex:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataCollection()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    .line 115
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNoticeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/SystemNoticeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    goto :goto_0
.end method

.method public getSmsIndex()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget v0, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->smsIndex:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 127
    if-nez p2, :cond_1

    .line 128
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f030041

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    new-instance v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)V

    .local v1, holder:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;
    move-object v4, p2

    .line 130
    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    :goto_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    .line 137
    .local v0, data:Lcom/alibaba/adi/collie/model/SystemNoticeData;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getTag()Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-result-object v3

    .line 138
    .local v3, tag:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
    invoke-direct {p0, v0, v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->inflateView(Lcom/alibaba/adi/collie/model/SystemNoticeData;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, subView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 140
    iget-object v4, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    :cond_0
    return-object p2

    .line 133
    .end local v0           #data:Lcom/alibaba/adi/collie/model/SystemNoticeData;
    .end local v1           #holder:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;
    .end local v2           #subView:Landroid/view/View;
    .end local v3           #tag:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;

    .line 134
    .restart local v1       #holder:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;
    iget-object v4, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$SystemDataHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public refresh()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    const-string v5, "adi_lock_privacy_sms_key"

    invoke-static {v5, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .local v1, showSms:Z
    const-string v5, "adi_lock_privacy_weibo_key"

    invoke-static {v5, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v2

    .line 85
    .local v2, showWeibo:Z
    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mShowSms:Z

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 86
    .local v0, ret:Z
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mShowSms:Z

    .line 87
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mShowWeibo:Z

    .line 88
    if-eqz v0, :cond_1

    :goto_1
    return v4

    .end local v0           #ret:Z
    :cond_0
    move v0, v4

    .line 85
    goto :goto_0

    .restart local v0       #ret:Z
    :cond_1
    move v4, v3

    .line 88
    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    .line 75
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;

    .line 76
    return-void
.end method

.method public setData(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;)V
    .locals 2
    .parameter "dataCollection"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 96
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mNoticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    .line 100
    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataCollection is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
