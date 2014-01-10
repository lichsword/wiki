.class public final Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;
.super Ljava/lang/Object;
.source "KakaLibPosterDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;,
        Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    }
.end annotation


# static fields
.field public static final KAKALIB_ACTIVITY_RESULT_CODE:I = 0x13

.field public static final POSTER_INFO_TAOBAO_API:Ljava/lang/String; = "mtop.etao.kaka.poster.search"

.field public static final PosterBgName:Ljava/lang/String; = "postBg.jpg"

.field private static final mtopApi:Ljava/lang/String; = "http://api.m.taobao.com/rest/api3.do"

.field private static taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;


# instance fields
.field private context:Landroid/support/v4/app/FragmentActivity;

.field private hasStop:Z

.field private inScaning:Z

.field private kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

.field private mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;)V
    .locals 0
    .parameter "context"
    .parameter "posterCallback"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    .line 65
    iput-object p2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z

    return v0
.end method

.method static synthetic access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->inScaning:Z

    return-void
.end method

.method static synthetic access$5(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->showPosterNotMatchDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z

    return-void
.end method

.method private decode(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, decodeTask:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;,"Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask<*>;"
    if-eqz p1, :cond_0

    .line 77
    invoke-static {}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->getAsyncTaskExecInterface()Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-interface {v0, p1, v1}, Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "loadding"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    .line 132
    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->dismissAllowingStateLoss()V

    .line 139
    :cond_1
    return-void
.end method

.method public static generatePostByte(Landroid/taobao/apirequest/TaoApiRequest;Ljava/lang/String;)[B
    .locals 5
    .parameter "taoApiRequest"
    .parameter "baseUrl"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, url:Ljava/lang/String;
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 252
    .local v0, bytes:[B
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getAsyncTaskExecInterface()Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    sput-object v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    .line 72
    :cond_0
    sget-object v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    return-object v0
.end method

.method public static parsePosterApiResult(Landroid/taobao/apirequest/ApiResult;)Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .locals 23
    .parameter "res"

    .prologue
    .line 261
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 262
    :cond_0
    const/4 v12, 0x0

    .line 388
    :cond_1
    :goto_0
    return-object v12

    .line 264
    :cond_2
    const/16 v16, 0x0

    .line 266
    .local v16, respStr:Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    move-object/from16 v18, v0

    const-string v19, "UTF-8"

    invoke-direct/range {v17 .. v19}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v16           #respStr:Ljava/lang/String;
    .local v17, respStr:Ljava/lang/String;
    move-object/from16 v16, v17

    .line 275
    .end local v17           #respStr:Ljava/lang/String;
    .restart local v16       #respStr:Ljava/lang/String;
    :goto_1
    const-string v18, "_p"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "poster req resp str: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v18, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct/range {v18 .. v18}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v15

    .line 278
    .local v15, resp:Landroid/taobao/apirequest/ApiResponse;
    const/16 v16, 0x0

    .line 279
    const/16 p0, 0x0

    .line 280
    iget-boolean v0, v15, Landroid/taobao/apirequest/ApiResponse;->success:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 281
    const/4 v12, 0x0

    .line 282
    .local v12, m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    iget-object v0, v15, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 283
    const/4 v12, 0x0

    goto :goto_0

    .line 267
    .end local v12           #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .end local v15           #resp:Landroid/taobao/apirequest/ApiResponse;
    :catch_0
    move-exception v4

    .line 268
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const/16 v16, 0x0

    .line 269
    const-string v18, "cm_"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "err: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v12, 0x0

    goto :goto_0

    .line 271
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 272
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 287
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v12       #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .restart local v15       #resp:Landroid/taobao/apirequest/ApiResponse;
    :cond_3
    :try_start_1
    iget-object v0, v15, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "card"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 288
    const-string v18, "_p"

    const-string v19, "starting to parse poster scanning json"

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, v15, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "card"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 292
    .local v7, j:Lorg/json/JSONObject;
    if-nez v12, :cond_4

    .line 293
    new-instance v13, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    invoke-direct {v13}, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;-><init>()V

    .end local v12           #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .local v13, m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    move-object v12, v13

    .line 295
    .end local v13           #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .restart local v12       #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->shouldUnzipFromJson:Z

    .line 296
    iget-object v0, v15, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    .line 297
    const-string v18, "cardNo"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->cardNumber:I

    .line 299
    new-instance v11, Lorg/json/JSONObject;

    const-string v18, "content"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    .local v11, jo:Lorg/json/JSONObject;
    const-string v18, "imgId"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->imgId:Ljava/lang/String;

    .line 302
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->title:Ljava/lang/String;

    .line 303
    const-string v18, "actionList"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 305
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    .line 306
    const-string v18, "actionList"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 308
    .local v8, ja:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, idx:S
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v5, v0, :cond_7

    .line 381
    .end local v5           #idx:S
    .end local v7           #j:Lorg/json/JSONObject;
    .end local v8           #ja:Lorg/json/JSONArray;
    .end local v11           #jo:Lorg/json/JSONObject;
    :cond_5
    :goto_3
    if-nez v12, :cond_1

    .line 388
    .end local v12           #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 310
    .restart local v5       #idx:S
    .restart local v7       #j:Lorg/json/JSONObject;
    .restart local v8       #ja:Lorg/json/JSONArray;
    .restart local v11       #jo:Lorg/json/JSONObject;
    .restart local v12       #m:Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :cond_7
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 308
    :goto_4
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    int-to-short v5, v0

    goto :goto_2

    .line 314
    :cond_8
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 315
    .local v9, jao:Lorg/json/JSONObject;
    new-instance v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;

    invoke-direct {v2}, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;-><init>()V

    .line 316
    .local v2, a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    const-string v18, "cycle"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->cycle:I

    .line 317
    const-string v18, "time"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->time:J

    .line 318
    const-string v18, "delay"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->delay:J

    .line 319
    const-string v18, "x"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->x:I

    .line 320
    const-string v18, "y"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->y:I

    .line 322
    const-string v18, "pics"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 323
    const-string v18, "pics"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 325
    .local v14, picjlist:Lorg/json/JSONArray;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    .line 327
    const/4 v6, 0x0

    .local v6, idx_:S
    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_b

    .line 342
    .end local v6           #idx_:S
    .end local v14           #picjlist:Lorg/json/JSONArray;
    :cond_9
    const-string v18, "action"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    .line 344
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 346
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 347
    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 348
    .local v3, colonIdx:I
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    .line 349
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v3, 0x1

    .line 350
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    .line 349
    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    .line 352
    const-string v18, "_p"

    .line 353
    const-string v19, "actiont type: %1$s content: %2$s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 354
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 352
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v3           #colonIdx:I
    :goto_6
    const-string v18, "titColor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 361
    const-string v18, "titColor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->titleColor:I

    .line 364
    :cond_a
    iget-object v0, v12, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->actionList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_4

    .line 371
    .end local v2           #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .end local v5           #idx:S
    .end local v7           #j:Lorg/json/JSONObject;
    .end local v8           #ja:Lorg/json/JSONArray;
    .end local v9           #jao:Lorg/json/JSONObject;
    .end local v11           #jo:Lorg/json/JSONObject;
    :catch_2
    move-exception v10

    .line 372
    .local v10, je:Lorg/json/JSONException;
    const/4 v12, 0x0

    .line 373
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 328
    .end local v10           #je:Lorg/json/JSONException;
    .restart local v2       #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .restart local v5       #idx:S
    .restart local v6       #idx_:S
    .restart local v7       #j:Lorg/json/JSONObject;
    .restart local v8       #ja:Lorg/json/JSONArray;
    .restart local v9       #jao:Lorg/json/JSONObject;
    .restart local v11       #jo:Lorg/json/JSONObject;
    .restart local v14       #picjlist:Lorg/json/JSONArray;
    :cond_b
    :try_start_2
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 327
    :goto_7
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    int-to-short v6, v0

    goto/16 :goto_5

    .line 332
    :cond_c
    iget-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v18, "_p"

    .line 336
    const-string v19, "action pic uri: %1$s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 337
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 336
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 334
    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    .line 374
    .end local v2           #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .end local v5           #idx:S
    .end local v6           #idx_:S
    .end local v7           #j:Lorg/json/JSONObject;
    .end local v8           #ja:Lorg/json/JSONArray;
    .end local v9           #jao:Lorg/json/JSONObject;
    .end local v11           #jo:Lorg/json/JSONObject;
    .end local v14           #picjlist:Lorg/json/JSONArray;
    :catch_3
    move-exception v4

    .line 375
    .restart local v4       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 376
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 356
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #a:Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
    .restart local v5       #idx:S
    .restart local v7       #j:Lorg/json/JSONObject;
    .restart local v8       #ja:Lorg/json/JSONArray;
    .restart local v9       #jao:Lorg/json/JSONObject;
    .restart local v11       #jo:Lorg/json/JSONObject;
    :cond_d
    const/16 v18, 0x0

    :try_start_3
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionContent:Ljava/lang/String;

    .line 357
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6
.end method

.method private showLoadingDialog()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->newInstance()Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    .line 114
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    new-instance v1, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$2;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$2;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 125
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->kakaLibLoadingDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "loadding"

    invoke-virtual {v0, v1, v2}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method private showPosterNotMatchDialog()V
    .locals 3

    .prologue
    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->inScaning:Z

    .line 143
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->dismissLoadingDialog()V

    .line 144
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 146
    invoke-static {}, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->newInstance()Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;

    move-result-object v0

    .line 147
    .local v0, kakaLibPosterNotMatchDialogFragment:Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;
    new-instance v1, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$3;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$3;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 160
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 161
    const-string v2, "PosterNotMath"

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 163
    .end local v0           #kakaLibPosterNotMatchDialogFragment:Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;
    :cond_0
    return-void
.end method

.method public static syncGetPostMessage(Landroid/content/Context;Ljava/lang/String;)Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .locals 8
    .parameter "context"
    .parameter "feature"

    .prologue
    const/4 v7, 0x1

    .line 227
    .line 228
    const-string v5, "mtop.etao.kaka.poster.search"

    const-string v6, "1.0"

    .line 227
    invoke-static {p0, v5, v6}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->getCommonApiRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/apirequest/TaoApiRequest;

    move-result-object v4

    .line 229
    .local v4, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v5, "content"

    invoke-virtual {v4, v5, p1}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 232
    .local v0, apiProp:Landroid/taobao/apirequest/ApiProperty;
    const-string v5, "http://api.m.taobao.com/rest/api3.do?"

    invoke-static {v4, v5}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->generatePostByte(Landroid/taobao/apirequest/TaoApiRequest;Ljava/lang/String;)[B

    move-result-object v2

    .line 233
    .local v2, b__:[B
    if-eqz v2, :cond_0

    array-length v5, v2

    if-le v5, v7, :cond_0

    .line 234
    invoke-virtual {v0, v7}, Landroid/taobao/apirequest/ApiProperty;->setPost(Z)V

    .line 235
    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/ApiProperty;->setPostData([B)V

    .line 237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v3, httpHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v0, v3}, Landroid/taobao/apirequest/ApiProperty;->setConnectionHeader(Ljava/util/Map;)V

    .line 240
    const-string v5, "_p"

    const-string v6, "sync req start..."

    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    const-string v6, "http://api.m.taobao.com/rest/api3.do"

    invoke-virtual {v5, v6, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v1

    .line 242
    .local v1, apiResult:Landroid/taobao/apirequest/ApiResult;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->parsePosterApiResult(Landroid/taobao/apirequest/ApiResult;)Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    move-result-object v5

    .line 244
    .end local v1           #apiResult:Landroid/taobao/apirequest/ApiResult;
    .end local v3           #httpHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodePoster([BII)Z
    .locals 3
    .parameter "jpgstream"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    iget-boolean v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->inScaning:Z

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return v0

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->inScaning:Z

    .line 94
    iput-boolean v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z

    .line 95
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->showLoadingDialog()V

    .line 96
    new-instance v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;[BII)V

    invoke-direct {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->decode(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;)V

    move v0, v1

    .line 108
    goto :goto_0
.end method
