.class public final Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;
.super Lcom/etao/kakalib/BaseFragmentActivity;
.source "KakaLibPosterScanningResActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;,
        Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    }
.end annotation


# static fields
.field public static final KAKA_POSTERSCANNINGTYPE_MAGZINE:I = 0x1

.field public static final KAKA_POSTERSCANNINGTYPE_MOVIEPOSTER:I = 0x0

.field public static final KAKA_POSTERSCANNINGTYPE_UNKNOWN:I = 0x63

.field public static final KAKA_POSTERSCANNING_IPHONE5_HEIGHT:I = 0x470

.field public static final KAKA_POSTERSCANNING_IPHONE_HEIGHT:I = 0x3c0

.field public static final KAKA_POSTERSCANNING_IPHONE_WIDTH:I = 0x280


# instance fields
.field private kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

.field mBgHeightPx:I

.field mBgWidthPx:I

.field mContainerHeightPx:I

.field mContainerWidthPx:I

.field mCtrlCounter:I

.field mCtx:Landroid/content/Context;

.field mCurrActiveAction:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;

.field mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

.field final mHdl:Landroid/os/Handler;

.field mHud:Landroid/widget/FrameLayout;

.field mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

.field mLbl:Landroid/widget/TextView;

.field mPosterType:I

.field mRoot:Landroid/widget/FrameLayout;

.field mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/etao/kakalib/BaseFragmentActivity;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mHdl:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 2

    .prologue
    .line 486
    const-string v0, "scan"

    const-string v1, "dismissLoadingDialog"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 489
    const-string v1, "loadding"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    .line 488
    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->dismissAllowingStateLoss()V

    .line 494
    const-string v0, "scan"

    const-string v1, "dismissLoadingDialog dismissAllowingStateLoss"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    return-void
.end method

.method private prepareSrc()Z
    .locals 33

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    if-nez v2, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 422
    :goto_0
    return v2

    .line 207
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-boolean v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->shouldUnzipFromJson:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 215
    const/4 v2, 0x0

    goto :goto_0

    .line 219
    :cond_2
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v15, data:Lorg/json/JSONObject;
    const-string v2, "card"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    if-nez v2, :cond_11

    .line 286
    const/4 v2, 0x0

    goto :goto_0

    .line 224
    :cond_4
    :try_start_1
    const-string v2, "card"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 226
    .local v19, j:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const-string v3, "cardNo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->cardNumber:I

    .line 227
    new-instance v23, Lorg/json/JSONObject;

    const-string v2, "content"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v23, jo:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const-string v3, "imgId"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->imgId:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const-string v3, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->title:Ljava/lang/String;

    .line 230
    const-string v2, "actionList"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    .line 232
    const-string v2, "actionList"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 233
    .local v20, ja:Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, idx:S
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 234
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    :goto_2
    add-int/lit8 v2, v17, 0x1

    int-to-short v0, v2

    move/from16 v17, v0

    goto :goto_1

    .line 237
    :cond_5
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 238
    .local v21, jao:Lorg/json/JSONObject;
    new-instance v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;

    invoke-direct {v9}, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;-><init>()V

    .line 239
    .local v9, a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    const-string v2, "cycle"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->cycle:I

    .line 240
    const-string v2, "time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->time:J

    .line 241
    const-string v2, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->delay:J

    .line 242
    const-string v2, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->x:I

    .line 243
    const-string v2, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->y:I

    .line 244
    const-string v2, "pics"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 245
    const-string v2, "pics"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 246
    .local v28, picjlist:Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    .line 247
    const/16 v18, 0x0

    .local v18, idx_:S
    :goto_3
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_8

    .line 258
    .end local v18           #idx_:S
    .end local v28           #picjlist:Lorg/json/JSONArray;
    :cond_6
    const-string v2, "action"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    .line 259
    iget-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 260
    iget-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    .line 261
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 262
    .local v14, colonIdx:I
    iget-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    .line 263
    iget-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    add-int/lit8 v3, v14, 0x1

    .line 264
    iget-object v4, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 263
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    .line 265
    const-string v2, "_p"

    .line 266
    const-string v3, "actiont type: %1$s content: %2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 267
    iget-object v6, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 266
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v14           #colonIdx:I
    :goto_4
    const-string v2, "titColor"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 273
    const-string v2, "titColor"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->titleColor:I

    .line 275
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 280
    .end local v9           #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .end local v15           #data:Lorg/json/JSONObject;
    .end local v17           #idx:S
    .end local v19           #j:Lorg/json/JSONObject;
    .end local v20           #ja:Lorg/json/JSONArray;
    .end local v21           #jao:Lorg/json/JSONObject;
    .end local v23           #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v22

    .line 281
    .local v22, je:Lorg/json/JSONException;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    if-nez v2, :cond_b

    .line 286
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 248
    .end local v22           #je:Lorg/json/JSONException;
    .restart local v9       #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .restart local v15       #data:Lorg/json/JSONObject;
    .restart local v17       #idx:S
    .restart local v18       #idx_:S
    .restart local v19       #j:Lorg/json/JSONObject;
    .restart local v20       #ja:Lorg/json/JSONArray;
    .restart local v21       #jao:Lorg/json/JSONObject;
    .restart local v23       #jo:Lorg/json/JSONObject;
    .restart local v28       #picjlist:Lorg/json/JSONArray;
    :cond_8
    :try_start_3
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 247
    :goto_5
    add-int/lit8 v2, v18, 0x1

    int-to-short v0, v2

    move/from16 v18, v0

    goto/16 :goto_3

    .line 251
    :cond_9
    iget-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v2, "_p"

    .line 254
    const-string v3, "action pic uri: %1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 255
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 254
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 282
    .end local v9           #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .end local v15           #data:Lorg/json/JSONObject;
    .end local v17           #idx:S
    .end local v18           #idx_:S
    .end local v19           #j:Lorg/json/JSONObject;
    .end local v20           #ja:Lorg/json/JSONArray;
    .end local v21           #jao:Lorg/json/JSONObject;
    .end local v23           #jo:Lorg/json/JSONObject;
    .end local v28           #picjlist:Lorg/json/JSONArray;
    :catch_1
    move-exception v16

    .line 283
    .local v16, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    if-nez v2, :cond_f

    .line 286
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 269
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v9       #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .restart local v15       #data:Lorg/json/JSONObject;
    .restart local v17       #idx:S
    .restart local v19       #j:Lorg/json/JSONObject;
    .restart local v20       #ja:Lorg/json/JSONArray;
    .restart local v21       #jao:Lorg/json/JSONObject;
    .restart local v23       #jo:Lorg/json/JSONObject;
    :cond_a
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    .line 270
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 284
    .end local v9           #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .end local v15           #data:Lorg/json/JSONObject;
    .end local v17           #idx:S
    .end local v19           #j:Lorg/json/JSONObject;
    .end local v20           #ja:Lorg/json/JSONArray;
    .end local v21           #jao:Lorg/json/JSONObject;
    .end local v23           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    if-nez v3, :cond_10

    .line 286
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v22       #je:Lorg/json/JSONException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    .line 293
    .end local v22           #je:Lorg/json/JSONException;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    .line 295
    const-string v2, "_p"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action control number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/16 v2, 0x280

    move-object/from16 v0, p0

    iput v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgWidthPx:I

    .line 300
    const/16 v2, 0x3c0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgHeightPx:I

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_d
    :goto_7
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 319
    const-string v3, "_p"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "poster type: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mPosterType:I

    if-nez v2, :cond_13

    const-string v2, "movie"

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v3, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iget-object v2, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    .line 422
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 288
    .restart local v16       #e:Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    goto :goto_6

    .end local v16           #e:Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    .line 290
    throw v2

    .line 288
    .restart local v15       #data:Lorg/json/JSONObject;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    goto/16 :goto_6

    .line 301
    .end local v15           #data:Lorg/json/JSONObject;
    :cond_12
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;

    .line 302
    .local v25, m:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    const-string v3, "vid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mPosterType:I

    .line 304
    const/16 v2, 0x470

    move-object/from16 v0, p0

    iput v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgHeightPx:I

    .line 305
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 306
    const-string v3, "postBg.jpg"

    .line 305
    invoke-direct {v13, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v13, bgfile:Ljava/io/File;
    new-instance v26, Landroid/util/DisplayMetrics;

    invoke-direct/range {v26 .. v26}, Landroid/util/DisplayMetrics;-><init>()V

    .line 308
    .local v26, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 309
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 310
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v6, 0x1

    const/16 v7, 0x5a

    const/4 v8, 0x1

    .line 309
    invoke-static/range {v2 .. v8}, Lcom/etao/kakalib/util/KaKaLibUtils;->getChapedBitmap(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 311
    .local v11, bg:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mRoot:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 313
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_7

    .line 320
    .end local v11           #bg:Landroid/graphics/Bitmap;
    .end local v13           #bgfile:Ljava/io/File;
    .end local v25           #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .end local v26           #metrics:Landroid/util/DisplayMetrics;
    :cond_13
    const-string v2, "magzine"

    goto/16 :goto_8

    .line 323
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;

    .line 325
    .restart local v25       #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    const-string v4, "back"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 327
    new-instance v24, Landroid/widget/FrameLayout$LayoutParams;

    .line 328
    const/4 v2, -0x1

    .line 329
    const/4 v4, -0x1

    .line 327
    move-object/from16 v0, v24

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 330
    .local v24, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v12, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;Landroid/content/Context;)V

    .line 331
    .local v12, bgView:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 334
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v2, v4, v5, v6}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setPadding(IIII)V

    .line 335
    const-string v2, "back"

    iput-object v2, v12, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mActionType:Ljava/lang/String;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v12}, Landroid/taobao/imagebinder/ImagePoolBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto/16 :goto_9

    .line 339
    .end local v12           #bgView:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    .end local v24           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_15
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    .line 340
    const-string v4, "cin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 341
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    const-string v4, "web"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 343
    :cond_16
    new-instance v10, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;Landroid/content/Context;)V

    .line 344
    .local v10, actionBtn:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    new-instance v24, Landroid/widget/FrameLayout$LayoutParams;

    .line 345
    const/4 v2, -0x2

    .line 346
    const/4 v4, -0x2

    const/4 v5, 0x3

    .line 344
    move-object/from16 v0, v24

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 347
    .restart local v24       #lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->x:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->y:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 350
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    iput-object v2, v10, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mActionType:Ljava/lang/String;

    .line 351
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    iput-object v2, v10, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mTargetUrl:Ljava/lang/String;

    .line 352
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setClickable(Z)V

    .line 353
    new-instance v2, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$2;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;)V

    invoke-virtual {v10, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mHud:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v10}, Landroid/taobao/imagebinder/ImagePoolBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto/16 :goto_9

    .line 370
    .end local v10           #actionBtn:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    .end local v24           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_17
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    .line 371
    const-string v4, "vid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 373
    new-instance v29, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtx:Landroid/content/Context;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;Landroid/content/Context;)V

    .line 374
    .local v29, stream:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    new-instance v24, Landroid/widget/FrameLayout$LayoutParams;

    .line 375
    const/4 v2, -0x2

    .line 376
    const/4 v4, -0x2

    const/4 v5, 0x3

    .line 374
    move-object/from16 v0, v24

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 377
    .restart local v24       #lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->x:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->y:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 378
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 380
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mActionType:Ljava/lang/String;

    .line 381
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mTargetUrl:Ljava/lang/String;

    .line 382
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setClickable(Z)V

    .line 383
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 384
    .local v30, streamUri:Ljava/lang/String;
    new-instance v2, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v2, v0, v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mHud:Landroid/widget/FrameLayout;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto/16 :goto_9

    .line 397
    .end local v24           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v29           #stream:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
    .end local v30           #streamUri:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    const-string v4, "tit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 399
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtx:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v27, movieName:Landroid/widget/TextView;
    new-instance v31, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerWidthPx:I

    .line 401
    const/4 v4, -0x2

    const/16 v5, 0x30

    .line 400
    move-object/from16 v0, v31

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 406
    .local v31, txtlp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    .line 408
    move-object/from16 v0, v25

    iget v4, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerHeightPx:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    mul-float/2addr v4, v5

    .line 409
    const/high16 v5, 0x448e

    .line 408
    div-float/2addr v4, v5

    .line 407
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 409
    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 405
    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/TextView;->setText([CII)V

    .line 412
    const/high16 v2, 0x4190

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    const v2, -0xcccccd

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    const/16 v2, 0x11

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 415
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 417
    const/high16 v2, 0x4040

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mHud:Landroid/widget/FrameLayout;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 419
    move-object/from16 v0, p0

    iget v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    goto/16 :goto_9
.end method

.method private showLoadingDialog()V
    .locals 3

    .prologue
    .line 480
    invoke-static {}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->newInstance()Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    .line 481
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "loadding"

    invoke-virtual {v0, v1, v2}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 482
    const-string v0, "scan"

    const-string v1, "showLoadingDialog"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 436
    check-cast p1, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;

    .end local p1
    iget-object v0, p1, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mTargetUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByNativeBrowserActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 437
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/etao/kakalib/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "kakalib_posterscanning_activity"

    const v1, 0x7f030014

    .line 116
    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->setContentView(I)V

    .line 119
    const-string v0, "_p"

    const-string v1, "posterScanning.onCreate"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtx:Landroid/content/Context;

    .line 123
    new-instance v0, Landroid/taobao/imagebinder/ImagePoolBinder;

    .line 124
    const-string v1, "kakalib_image_load"

    const v2, 0x7f040003

    .line 123
    invoke-static {p0, v1, v2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getAnimByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 126
    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImagePoolBinder;-><init>(ILjava/lang/String;Landroid/app/Application;II)V

    .line 123
    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    .line 127
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->setDelayTime(J)V

    .line 128
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v0, p0}, Landroid/taobao/imagebinder/ImagePoolBinder;->setImageBinderListener(Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;)V

    .line 131
    const-string v0, "layout_posterscanning_actioncontainer"

    .line 132
    const v1, 0x7f0a0051

    .line 131
    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mRoot:Landroid/widget/FrameLayout;

    .line 134
    const-string v0, "layout_posterscanning_hud"

    const v1, 0x7f0a0052

    .line 133
    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mHud:Landroid/widget/FrameLayout;

    .line 135
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    const-string v1, "kakaPosterScanningModel"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mScanningModel:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    .line 137
    new-instance v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;)V

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    .line 139
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    iget v0, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenHeightPx:I

    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->dp2Px(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerHeightPx:I

    .line 140
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    iget v0, v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenWidthPx:I

    iput v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerWidthPx:I

    .line 143
    const-string v0, "btn_posterscanning_back"

    const v1, 0x7f0a0053

    .line 142
    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 144
    .local v6, btnBack:Landroid/widget/ImageButton;
    if-eqz v6, :cond_0

    .line 145
    new-instance v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$1;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onDestroy()V

    .line 195
    const-string v0, "_p"

    const-string v1, "posterScanning.onDestory"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->pauseDownload()V

    .line 197
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->destroy()V

    .line 198
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->setResult(I)V

    .line 199
    return-void
.end method

.method public onImageBind(Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Landroid/view/View;)Z
    .locals 10
    .parameter "url"
    .parameter "bkg"
    .parameter "drawable"
    .parameter "view"

    .prologue
    .line 441
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    iget v6, v6, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 442
    .local v1, imgWidthPx:I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mDm:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;

    iget v6, v6, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 443
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v0

    .local v0, imgHeightPx:I
    move-object v5, p4

    .line 445
    check-cast v5, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;

    iget-object v2, v5, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mActionType:Ljava/lang/String;

    .line 447
    .local v2, leType:Ljava/lang/String;
    const-string v5, "_p"

    .line 448
    const-string v6, "current fetch img size: %1$d x %2$d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 447
    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v5, "back"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    invoke-virtual {p4, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    :goto_0
    iget v5, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    .line 468
    iget v5, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->dismissLoadingDialog()V

    .line 471
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 454
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .local v4, olp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 456
    int-to-float v5, v1

    const/high16 v6, 0x3f80

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgWidthPx:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerWidthPx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 455
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 456
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 457
    int-to-float v6, v0

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgHeightPx:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerHeightPx:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 456
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 457
    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v6

    const/4 v7, 0x3

    .line 455
    invoke-direct {v3, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 458
    .local v3, nlp:Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgWidthPx:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerWidthPx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 459
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 460
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/lit8 v6, v6, -0x19

    int-to-float v6, v6

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mBgHeightPx:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mContainerHeightPx:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 461
    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 458
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 462
    invoke-virtual {p4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    const/4 v5, 0x1

    invoke-virtual {p4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 464
    invoke-virtual {p4, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onPause()V

    .line 181
    const-string v0, "_p"

    const-string v1, "posterScanning.onPause"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->dismissLoadingDialog()V

    .line 183
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->pauseDownload()V

    .line 184
    return-void
.end method

.method public onProgressBind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z
    .locals 1
    .parameter "url"
    .parameter "progress"
    .parameter "view"

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onResume()V

    .line 160
    const-string v1, "_p"

    const-string v2, "posterScanning.onResume"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtrlCounter:I

    .line 165
    iput v3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mPosterType:I

    .line 166
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->showLoadingDialog()V

    .line 167
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->prepareSrc()Z

    move-result v0

    .line 168
    .local v0, flag:Z
    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->dismissLoadingDialog()V

    .line 170
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->finish()V

    .line 175
    .end local v0           #flag:Z
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mImgPoolBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v1}, Landroid/taobao/imagebinder/ImagePoolBinder;->resumeDownload()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onStop()V

    .line 189
    const-string v0, "_p"

    const-string v1, "posterScanning.onStop"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method
