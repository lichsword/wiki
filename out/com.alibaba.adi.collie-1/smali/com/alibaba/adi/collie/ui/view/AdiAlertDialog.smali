.class public Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
.super Landroid/app/Dialog;
.source "AdiAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$ButtonHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionLayout:Landroid/view/ViewGroup;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCustomContainer:Landroid/view/ViewGroup;

.field private mCustomView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsCheckedColumn:Ljava/lang/String;

.field private mIsMultiChoice:Z

.field private mIsSingleChoice:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLabelColumn:Ljava/lang/String;

.field private final mListItemLayout:I

.field private final mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private final mMultiChoiceItemLayout:I

.field private mNagetiveButton:Landroid/widget/Button;

.field private mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNeutralButton:Landroid/widget/Button;

.field private mNeutralClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPositiveButton:Landroid/widget/Button;

.field private mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    const v0, 0x7f0d007a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 118
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mWindow:Landroid/view/Window;

    .line 120
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    const v0, 0x7f030022

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAlertDialogLayout:I

    .line 123
    const v0, 0x7f030026

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListLayout:I

    .line 124
    const v0, 0x7f030024

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMultiChoiceItemLayout:I

    .line 125
    const v0, 0x7f030025

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mSingleChoiceItemLayout:I

    .line 126
    const v0, 0x7f030023

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListItemLayout:I

    .line 128
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$ButtonHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)[Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mLabelColumn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsCheckedColumn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    return v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object v0
.end method

.method private static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    :goto_0
    return v2

    .line 147
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 148
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 151
    check-cast v1, Landroid/view/ViewGroup;

    .line 152
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 153
    .local v0, i:I
    :cond_2
    if-gtz v0, :cond_3

    move v2, v3

    .line 161
    goto :goto_0

    .line 154
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 155
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 156
    invoke-static {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method private checkActionLayout()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 302
    const v7, 0x7f0800c7

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 303
    .local v1, buttonSpacerLeft:Landroid/view/View;
    const v7, 0x7f0800c9

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 305
    .local v2, buttonSpacerRight:Landroid/view/View;
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v3, 0x100

    .line 306
    .local v3, nagetiveFlag:I
    :goto_0
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x1

    .line 307
    .local v5, positiveFlag:I
    :goto_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    const/16 v4, 0x10

    .line 308
    .local v4, neutralFlag:I
    :goto_2
    or-int v7, v3, v5

    or-int v0, v7, v4

    .line 310
    .local v0, buttonFlags:I
    sparse-switch v0, :sswitch_data_0

    .line 322
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 323
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_3
    return-void

    .end local v0           #buttonFlags:I
    .end local v3           #nagetiveFlag:I
    .end local v4           #neutralFlag:I
    .end local v5           #positiveFlag:I
    :cond_0
    move v3, v6

    .line 305
    goto :goto_0

    .restart local v3       #nagetiveFlag:I
    :cond_1
    move v5, v6

    .line 306
    goto :goto_1

    .restart local v5       #positiveFlag:I
    :cond_2
    move v4, v6

    .line 307
    goto :goto_2

    .line 314
    .restart local v0       #buttonFlags:I
    .restart local v4       #neutralFlag:I
    :sswitch_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 315
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 318
    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x101 -> :sswitch_0
        0x110 -> :sswitch_0
        0x111 -> :sswitch_1
    .end sparse-switch
.end method

.method private creatAdapter()Landroid/widget/ListAdapter;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v4, 0x7f0800cb

    const/4 v7, 0x0

    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsMultiChoice:Z

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 394
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;

    .line 395
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMultiChoiceItemLayout:I

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    .line 394
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 450
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_0
    return-object v0

    .line 412
    :cond_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v3, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;-><init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 438
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 439
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    .line 440
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mSingleChoiceItemLayout:I

    .line 441
    .local v2, layout:I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 442
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 444
    :goto_2
    goto :goto_0

    .line 440
    .end local v2           #layout:I
    :cond_2
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListItemLayout:I

    goto :goto_1

    .line 443
    .restart local v2       #layout:I
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_2

    .line 445
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    .line 446
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mLabelColumn:Ljava/lang/String;

    aput-object v5, v6, v7

    new-array v5, v8, [I

    aput v4, v5, v7

    move-object v4, v6

    .line 445
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0
.end method

.method private createListView()V
    .locals 4

    .prologue
    .line 457
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 459
    .local v0, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->creatAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_4

    .line 464
    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;-><init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 484
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 488
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    if-eqz v1, :cond_5

    .line 489
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 493
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    .line 494
    return-void

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 473
    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;-><init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 490
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 491
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_1
.end method

.method private installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 170
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomView:Landroid/view/View;

    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 174
    :cond_1
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAlertDialogLayout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setContentView(I)V

    .line 176
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setupView()V

    .line 177
    return-void
.end method

.method private setupActionButtons()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 254
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mActionLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 295
    :goto_0
    return-void

    .line 257
    :cond_0
    const v2, 0x7f0800c4

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, actionDivider:Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    move v2, v3

    .line 258
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 262
    .local v1, hasButton:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mActionLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 268
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :goto_4
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 277
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :goto_5
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 286
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :goto_6
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->checkActionLayout()V

    goto :goto_0

    .line 258
    .end local v1           #hasButton:Ljava/lang/Boolean;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .restart local v1       #hasButton:Ljava/lang/Boolean;
    :cond_3
    move v2, v4

    .line 263
    goto :goto_2

    :cond_4
    move v2, v4

    .line 265
    goto :goto_3

    .line 272
    :cond_5
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 281
    :cond_6
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 290
    :cond_7
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6
.end method

.method private setupCustomView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 233
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupMessageView()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupTitleView()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 332
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitleView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const v2, 0x7f0800bf

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, titleDivider:Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 338
    .local v1, titleShown:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_2
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #titleShown:Ljava/lang/Boolean;
    :cond_2
    move v2, v3

    .line 336
    goto :goto_1

    .line 342
    .restart local v1       #titleShown:Ljava/lang/Boolean;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v4

    .line 346
    goto :goto_3
.end method

.method private setupView()V
    .locals 3

    .prologue
    .line 183
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitleView:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomContainer:Landroid/view/ViewGroup;

    .line 186
    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContentContainer:Landroid/view/ViewGroup;

    .line 187
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMessageView:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mActionLayout:Landroid/view/ViewGroup;

    .line 190
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    .line 191
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    .line 192
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    .line 194
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setupTitleView()V

    .line 196
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setupActionButtons()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->createListView()V

    .line 201
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setupCustomView(Landroid/view/View;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 218
    :cond_2
    :goto_0
    return-void

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setupCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 215
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setupMessageView()V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 513
    packed-switch p1, :pswitch_data_0

    .line 521
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 515
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveButton:Landroid/widget/Button;

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNagetiveButton:Landroid/widget/Button;

    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralButton:Landroid/widget/Button;

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 357
    .local v1, vId:I
    const/4 v0, 0x0

    .line 359
    .local v0, msg:Landroid/os/Message;
    packed-switch v1, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    :cond_1
    const v2, 0x7f0800c6

    if-ne v1, v2, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->cancel()V

    .line 386
    :goto_1
    return-void

    .line 361
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 364
    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 369
    goto :goto_0

    .line 371
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->dismiss()V

    goto :goto_1

    .line 359
    :pswitch_data_0
    .packed-switch 0x7f0800c6
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->installContent()V

    .line 135
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 667
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 668
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    .line 686
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mLabelColumn:Ljava/lang/String;

    .line 687
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 688
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 645
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 646
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 656
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 657
    return-object p0
.end method

.method public setMessage(I)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 558
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 559
    .local v0, message:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 560
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "message"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMessage:Ljava/lang/CharSequence;

    .line 569
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 722
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 723
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsMultiChoice:Z

    .line 725
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    .line 776
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 777
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsCheckedColumn:Ljava/lang/String;

    .line 778
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mLabelColumn:Ljava/lang/String;

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsMultiChoice:Z

    .line 780
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 747
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 748
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 749
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsMultiChoice:Z

    .line 751
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 600
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 601
    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 602
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 611
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 612
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 613
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 622
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 623
    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 624
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 634
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mNeutralClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 635
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter

    .prologue
    .line 696
    .local p1, listener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 698
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 580
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 590
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 591
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 801
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 802
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    .line 804
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCursor:Landroid/database/Cursor;

    .line 826
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 827
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    .line 828
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mLabelColumn:Ljava/lang/String;

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    .line 830
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 871
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 872
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    .line 874
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 849
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 850
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItem:I

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z

    .line 852
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mTitle:Ljava/lang/CharSequence;

    .line 531
    return-void
.end method

.method public setTitleEx(I)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 1
    .parameter "titleId"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    return-object p0
.end method

.method public setTitleEx(Ljava/lang/CharSequence;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "title"

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    .locals 0
    .parameter "view"

    .prologue
    .line 882
    if-nez p1, :cond_0

    .line 887
    :goto_0
    return-object p0

    .line 885
    :cond_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCustomView:Landroid/view/View;

    goto :goto_0
.end method
