.class public Lcom/etao/kakalib/views/KakaLibProductDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibProductDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ProductDialogFragment"


# instance fields
.field private jsonString:Ljava/lang/String;

.field private mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

.field private mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibProductDialogFragment;
    .locals 3
    .parameter "info"
    .parameter "jsonString"

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 37
    :cond_0
    new-instance v1, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;-><init>()V

    .line 38
    .local v1, f:Lcom/etao/kakalib/views/KakaLibProductDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "jsonString"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "product"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f070001

    .line 145
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onClick(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 150
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 151
    const-string v6, "kakalib_kaka_package_name"

    .line 150
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 149
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KaKaLibUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 152
    .local v2, isHuoyanInstalled:Z
    if-eqz v2, :cond_1

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    if-eqz v3, :cond_0

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.etao.kaka.CardList"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "code"

    iget-object v4, p0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v4}, Lcom/etao/kakalib/api/beans/ProductInfo;->getBarcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v3, "title"

    iget-object v4, p0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v4}, Lcom/etao/kakalib/api/beans/ProductInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v3, "img"

    iget-object v4, p0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v4}, Lcom/etao/kakalib/api/beans/ProductInfo;->getPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v3, "beanJson"

    iget-object v4, p0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->jsonString:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v1}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 167
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 168
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 169
    const-string v6, "kakalib_kaka_package_name"

    .line 168
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 167
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KaKaLibUtils;->openApp(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 175
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 176
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 177
    const-string v6, "kakalib_url_huoyan_apk_download"

    .line 178
    const/high16 v7, 0x7f07

    .line 176
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 175
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "product"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Lcom/etao/kakalib/api/beans/ProductInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "jsonString"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->jsonString:Ljava/lang/String;

    .line 48
    const/16 v16, 0x0

    .line 49
    .local v16, v:Landroid/view/View;
    const/4 v12, 0x0

    .line 51
    .local v12, onlinePriceHint:Landroid/widget/TextView;
    const/high16 v7, -0x4080

    .line 53
    .local v7, offline:F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOffLinePrice()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 57
    :goto_0
    const/high16 v10, -0x4080

    .line 59
    .local v10, online:F
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOnLinePrice()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 64
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 65
    const-string v18, "kakalib_product_info_dialog"

    const v19, 0x7f030016

    .line 64
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 66
    const/16 v18, 0x0

    .line 64
    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 69
    const-string v18, "offlinepricecontainer"

    const v19, 0x7f0a0054

    .line 68
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 70
    .local v9, offlinePriceContainer:Landroid/view/View;
    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-lez v17, :cond_2

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "product_offline_price"

    const v19, 0x7f0a0013

    .line 71
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 73
    .local v8, offlinePrice:Landroid/widget/TextView;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\uffe5"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .end local v8           #offlinePrice:Landroid/widget/TextView;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 80
    const-string v18, "product_online_price_hint"

    const v19, 0x7f0a0016

    .line 79
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #onlinePriceHint:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 81
    .restart local v12       #onlinePriceHint:Landroid/widget/TextView;
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-lez v17, :cond_6

    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-lez v17, :cond_6

    .line 82
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    cmpg-float v17, v10, v7

    if-gez v17, :cond_4

    .line 84
    sub-float v5, v7, v10

    .line 85
    .local v5, fSave:F
    const-string v15, ""

    .line 86
    .local v15, save:Ljava/lang/String;
    const/high16 v17, 0x4120

    cmpl-float v17, v5, v17

    if-lez v17, :cond_3

    .line 87
    const-string v17, "%.0f"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 92
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 94
    const-string v19, "kakalib_save"

    const v20, 0x7f070008

    .line 93
    invoke-static/range {v18 .. v20}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    .line 92
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 94
    aput-object v15, v18, v19

    .line 91
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v5           #fSave:F
    .end local v15           #save:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "product_online_price"

    const v19, 0x7f0a0015

    .line 105
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 108
    .local v11, onlinePrice:Landroid/widget/TextView;
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-nez v17, :cond_7

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "onlinepricecontainer"

    .line 111
    const v19, 0x7f0a0014

    .line 110
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 109
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 111
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "product_loadingImageView"

    const v19, 0x7f0a0011

    .line 115
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 117
    .local v6, imgView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/etao/kakalib/api/beans/ProductInfo;->getPic()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, pic:Ljava/lang/String;
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 120
    const-string v17, "ProductDialogFragment"

    const-string v18, " mImageBinder == null ,must need init"

    invoke-static/range {v17 .. v18}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 123
    const-string v18, "goods_icon"

    const v19, 0x7f020019

    .line 122
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "dialog_product_title"

    const v19, 0x7f0a0012

    .line 129
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 131
    .local v14, producetTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/etao/kakalib/api/beans/ProductInfo;->getKeyword()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-object v16

    .line 54
    .end local v6           #imgView:Landroid/widget/ImageView;
    .end local v9           #offlinePriceContainer:Landroid/view/View;
    .end local v10           #online:F
    .end local v11           #onlinePrice:Landroid/widget/TextView;
    .end local v13           #pic:Ljava/lang/String;
    .end local v14           #producetTitle:Landroid/widget/TextView;
    :catch_0
    move-exception v4

    .line 55
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 60
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v10       #online:F
    :catch_1
    move-exception v4

    .line 62
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 76
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v9       #offlinePriceContainer:Landroid/view/View;
    :cond_2
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 89
    .restart local v5       #fSave:F
    .restart local v15       #save:Ljava/lang/String;
    :cond_3
    const-string v17, "%.2f"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 95
    .end local v5           #fSave:F
    .end local v15           #save:Ljava/lang/String;
    :cond_4
    const/high16 v17, 0x4000

    mul-float v17, v17, v7

    cmpl-float v17, v10, v17

    if-ltz v17, :cond_5

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 97
    const-string v18, "kakalib_pieces"

    const v19, 0x7f070009

    .line 96
    invoke-static/range {v17 .. v19}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 99
    :cond_5
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 102
    :cond_6
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 113
    .restart local v11       #onlinePrice:Landroid/widget/TextView;
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\uffe5"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 125
    .restart local v6       #imgView:Landroid/widget/ImageView;
    .restart local v13       #pic:Ljava/lang/String;
    :cond_8
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/etao/kakalib/util/TbCdn;->appendingCdnType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 126
    const-string v17, "ProductDialogFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "pic is ="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v6}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto/16 :goto_6
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etao/kakalib/views/KaDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method public setImageBinder(Landroid/taobao/imagebinder/ImageBinder;)V
    .locals 0
    .parameter "imageBinder"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->mImageBinder:Landroid/taobao/imagebinder/ImageBinder;

    .line 31
    return-void
.end method
