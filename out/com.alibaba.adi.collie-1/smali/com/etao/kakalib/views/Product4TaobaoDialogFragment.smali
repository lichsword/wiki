.class public Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "Product4TaobaoDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ProductDialogFragment"


# instance fields
.field private mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

.field private mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/etao/kakalib/api/beans/TBBarcodeResult;)Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;
    .locals 3
    .parameter "info"

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 38
    :cond_0
    new-instance v1, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;-><init>()V

    .line 39
    .local v1, f:Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "product"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "product"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v18

    check-cast v18, Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    .line 47
    const/16 v17, 0x0

    .line 48
    .local v17, v:Landroid/view/View;
    const/4 v12, 0x0

    .line 49
    .local v12, onlinePriceHint:Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 50
    .local v6, offline:F
    const/4 v10, 0x0

    .line 52
    .local v10, online:F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getOffline()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getOffline()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    .line 52
    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, offlineString:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 58
    .end local v9           #offlineString:Ljava/lang/String;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getOnline()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getOnline()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    .line 58
    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 60
    .local v13, onlineString:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 63
    .end local v13           #onlineString:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 64
    const-string v19, "kakalib_product_4_taobao_info_dialog"

    .line 65
    const v20, 0x7f030015

    .line 63
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    .line 65
    const/16 v19, 0x0

    .line 63
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 68
    const-string v19, "offlinepricecontainer"

    const v20, 0x7f0a0054

    .line 67
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 69
    .local v8, offlinePriceContainer:Landroid/view/View;
    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-lez v18, :cond_1

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "product_offline_price"

    const v20, 0x7f0a0013

    .line 70
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    .local v7, offlinePrice:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\uffe5"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .end local v7           #offlinePrice:Landroid/widget/TextView;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 79
    const-string v19, "product_online_price_hint"

    const v20, 0x7f0a0016

    .line 78
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #onlinePriceHint:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 80
    .restart local v12       #onlinePriceHint:Landroid/widget/TextView;
    const/16 v18, 0x0

    cmpl-float v18, v10, v18

    if-lez v18, :cond_5

    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-lez v18, :cond_5

    .line 81
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    cmpg-float v18, v10, v6

    if-gez v18, :cond_3

    .line 83
    sub-float v4, v6, v10

    .line 84
    .local v4, fSave:F
    const-string v16, ""

    .line 85
    .local v16, save:Ljava/lang/String;
    const/high16 v18, 0x4120

    cmpl-float v18, v4, v18

    if-lez v18, :cond_2

    .line 86
    const-string v18, "%.0f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 91
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    .line 93
    const-string v20, "kakalib_save"

    .line 94
    const v21, 0x7f070008

    .line 92
    invoke-static/range {v19 .. v21}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 91
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 94
    aput-object v16, v19, v20

    .line 90
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v4           #fSave:F
    .end local v16           #save:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "product_online_price"

    const v20, 0x7f0a0015

    .line 105
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 108
    .local v11, onlinePrice:Landroid/widget/TextView;
    const/16 v18, 0x0

    cmpl-float v18, v10, v18

    if-nez v18, :cond_6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "onlinepricecontainer"

    .line 111
    const v20, 0x7f0a0014

    .line 110
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    .line 109
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 111
    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "product_loadingImageView"

    const v20, 0x7f0a0011

    .line 115
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 117
    .local v5, imgView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getPic()Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, pic:Ljava/lang/String;
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 119
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 120
    const-string v19, "kakalib_goods_icon"

    const v20, 0x7f020019

    .line 119
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "dialog_product_title"

    const v20, 0x7f0a0012

    .line 127
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 129
    .local v15, producetTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getKeyword()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-object v17

    .line 75
    .end local v5           #imgView:Landroid/widget/ImageView;
    .end local v11           #onlinePrice:Landroid/widget/TextView;
    .end local v14           #pic:Ljava/lang/String;
    .end local v15           #producetTitle:Landroid/widget/TextView;
    :cond_1
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 88
    .restart local v4       #fSave:F
    .restart local v16       #save:Ljava/lang/String;
    :cond_2
    const-string v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 95
    .end local v4           #fSave:F
    .end local v16           #save:Ljava/lang/String;
    :cond_3
    const/high16 v18, 0x4000

    mul-float v18, v18, v6

    cmpl-float v18, v10, v18

    if-ltz v18, :cond_4

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 97
    const-string v19, "kakalib_pieces"

    const v20, 0x7f070009

    .line 96
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 99
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 102
    :cond_5
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 113
    .restart local v11       #onlinePrice:Landroid/widget/TextView;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\uffe5"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 123
    .restart local v5       #imgView:Landroid/widget/ImageView;
    .restart local v14       #pic:Ljava/lang/String;
    :cond_7
    const-string v18, "_60x60.jpg"

    const-string v19, "_170x170.jpg"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 124
    const-string v18, "ProductDialogFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "pic is ="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v5}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto/16 :goto_6

    .line 61
    .end local v5           #imgView:Landroid/widget/ImageView;
    .end local v8           #offlinePriceContainer:Landroid/view/View;
    .end local v11           #onlinePrice:Landroid/widget/TextView;
    .end local v14           #pic:Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 55
    :catch_1
    move-exception v18

    goto/16 :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public setImageBinder(Landroid/taobao/imagebinder/ImageBinder;)V
    .locals 0
    .parameter "imageBinder"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    .line 32
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method
