.class public Lcom/etao/kakalib/views/ExpressDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "ExpressDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private mExpressCode:Ljava/lang/String;

.field private mExpresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRet:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    .line 33
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/etao/kakalib/views/ExpressDialogFragment;
    .locals 3
    .parameter "expressCode"
    .parameter
    .parameter "ret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;I)",
            "Lcom/etao/kakalib/views/ExpressDialogFragment;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, expresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/etao/kakalib/express/ExpressResult;>;"
    new-instance v1, Lcom/etao/kakalib/views/ExpressDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/ExpressDialogFragment;-><init>()V

    .line 38
    .local v1, f:Lcom/etao/kakalib/views/ExpressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "expresscode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "express"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    const-string v2, "ret"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onClick(Landroid/view/View;)V

    .line 120
    const-string v2, "FastMail_Button"

    invoke-static {v2}, Lcom/taobao/statistic/TBS$Page;->buttonClicked(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/express/ExpressResult;

    .line 126
    .local v0, expressResult:Lcom/etao/kakalib/express/ExpressResult;
    iget-object v2, p0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpressCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/etao/kakalib/express/ExpressResult;->mExpressCode:Ljava/lang/String;

    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/etao/kakalib/express/KakaLibExpressActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "section"

    iget-object v3, v0, Lcom/etao/kakalib/express/ExpressResult;->stepInfo:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    const-string v2, "company"

    iget-object v3, v0, Lcom/etao/kakalib/express/ExpressResult;->companyName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "expressno"

    iget-object v3, p0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpressCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v1}, Lcom/etao/kakalib/views/ExpressDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "expresscode"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpressCode:Ljava/lang/String;

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "express"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpresses:Ljava/util/List;

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "ret"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/etao/kakalib/views/ExpressDialogFragment;->mRet:I

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 51
    const-string v18, "kakalib_dialog_express"

    const v19, 0x7f030004

    .line 50
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .line 52
    .local v10, layoutId:I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 53
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 54
    const-string v18, "unkown_code"

    const v19, 0x7f0a000d

    .line 53
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 56
    .local v12, tvCode:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "express_container"

    const v19, 0x7f0a000e

    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 55
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 57
    .local v4, expressContanier:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpressCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpresses:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpresses:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_3

    .line 59
    :cond_0
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mRet:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 61
    const-string v17, "Page_FastMail_Error"

    invoke-static/range {v17 .. v17}, Lcom/taobao/statistic/TBS$Page;->buttonClicked(Ljava/lang/String;)V

    .line 114
    :cond_1
    :goto_0
    return-object v16

    .line 63
    :cond_2
    const-string v17, "Page_FastMail_NoData"

    invoke-static/range {v17 .. v17}, Lcom/taobao/statistic/TBS$Page;->buttonClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "txt_express_title"

    const v19, 0x7f0a000c

    .line 67
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 70
    .local v15, txtTitle:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "img_express_dialog"

    const v19, 0x7f0a000b

    .line 69
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 72
    .local v9, image:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "txt_express_select"

    const v19, 0x7f0a000f

    .line 71
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 74
    .local v14, txtSelect:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 75
    const-string v18, "kakalib_express_icon"

    const v19, 0x7f020018

    .line 74
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpresses:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 78
    const-string v18, "kakalib_express_code_type1"

    const v19, 0x7f070038

    .line 77
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_1
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    const/16 v17, -0x1

    const/16 v18, -0x2

    .line 88
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v11, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpresses:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/ExpressDialogFragment;->mExpresses:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/etao/kakalib/express/ExpressResult;

    .line 94
    .local v5, expressResult:Lcom/etao/kakalib/express/ExpressResult;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "kakalib_famelayout_express_item"

    .line 96
    const v20, 0x7f03000b

    .line 95
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    .line 96
    const/16 v19, 0x0

    .line 94
    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 99
    .local v6, frame:Landroid/widget/FrameLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "img_taobao"

    const v19, 0x7f0a0027

    .line 98
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 102
    .local v8, icon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "txt_expressname"

    const v19, 0x7f0a0028

    .line 101
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 104
    .local v13, txt:Landroid/widget/TextView;
    iget-object v0, v5, Lcom/etao/kakalib/express/ExpressResult;->companyName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v5}, Lcom/etao/kakalib/express/ExpressResult;->isTaobaoExpress()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 106
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_4
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v4, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 82
    .end local v5           #expressResult:Lcom/etao/kakalib/express/ExpressResult;
    .end local v6           #frame:Landroid/widget/FrameLayout;
    .end local v7           #i:I
    .end local v8           #icon:Landroid/widget/ImageView;
    .end local v11           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #txt:Landroid/widget/TextView;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 83
    const-string v18, "kakalib_express_code_type0"

    const v19, 0x7f070037

    .line 82
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/ExpressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 86
    const-string v18, "kakalib_please_choise"

    const v19, 0x7f070036

    .line 85
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method
