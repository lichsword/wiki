.class Lorg/android/agoo/service/ElectionService$2;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "ElectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/service/ElectionService;->remote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/android/agoo/service/ElectionService;


# direct methods
.method constructor <init>(Lorg/android/agoo/service/ElectionService;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errDesc"

    .prologue
    .line 289
    const-string v0, "ElectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errCode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]errDesc["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v0}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    .line 291
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 14
    .parameter "content"

    .prologue
    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 220
    const-string v11, "ElectionService"

    const-string v12, "remote content==null"

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    .line 286
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v11, "ElectionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remote election result["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v9, 0x0

    .line 229
    .local v9, tmpJson:Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 230
    .local v8, sudoPack:Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, clientPack:Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v4, json:Lorg/json/JSONObject;
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    const-string v12, "time_out"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    #setter for: Lorg/android/agoo/service/ElectionService;->timeout:J
    invoke-static {v11, v12, v13}, Lorg/android/agoo/service/ElectionService;->access$302(Lorg/android/agoo/service/ElectionService;J)J

    .line 234
    const-string v11, "vote_list"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 235
    .local v5, jsonArray:Lorg/json/JSONArray;
    if-nez v5, :cond_1

    .line 236
    const-string v11, "ElectionService"

    const-string v12, "remote vote_list==null"

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Ljava/lang/Throwable;
    const-string v11, "ElectionService"

    const-string v12, "remote--JSONException"

    invoke-static {v11, v12, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto :goto_0

    .line 240
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 241
    .local v10, voteLen:I
    if-gtz v10, :cond_2

    .line 242
    const-string v11, "ElectionService"

    const-string v12, "remote vote_list.length==0"

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_9

    .line 247
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 248
    if-nez v9, :cond_3

    .line 249
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto :goto_0

    .line 252
    :cond_3
    const-string v11, "package_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 254
    const-string v11, "ElectionService"

    const-string v12, "sudoPack==null"

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto/16 :goto_0

    .line 258
    :cond_4
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #getter for: Lorg/android/agoo/service/ElectionService;->packMap:Ljava/util/Map;
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$400(Lorg/android/agoo/service/ElectionService;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    .line 259
    const-string v11, "ElectionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "elctionResults not found["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto/16 :goto_0

    .line 263
    :cond_5
    const-string v11, "package_name_list"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 264
    .local v6, jsonArray2:Lorg/json/JSONArray;
    if-nez v6, :cond_6

    .line 265
    const-string v11, "ElectionService"

    const-string v12, "remote package_name_list==null"

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto/16 :goto_0

    .line 269
    :cond_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 270
    .local v7, packageNameListLen:I
    if-gtz v7, :cond_7

    .line 271
    const-string v11, "ElectionService"

    const-string v12, "remote package_name_list.length==0"

    invoke-static {v11, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #calls: Lorg/android/agoo/service/ElectionService;->handleLocalElection()V
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$200(Lorg/android/agoo/service/ElectionService;)V

    goto/16 :goto_0

    .line 275
    :cond_7
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v7, :cond_8

    .line 276
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    #getter for: Lorg/android/agoo/service/ElectionService;->sudos:Ljava/util/Map;
    invoke-static {v11}, Lorg/android/agoo/service/ElectionService;->access$500(Lorg/android/agoo/service/ElectionService;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 246
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 280
    .end local v3           #j:I
    .end local v6           #jsonArray2:Lorg/json/JSONArray;
    .end local v7           #packageNameListLen:I
    :cond_9
    iget-object v11, p0, Lorg/android/agoo/service/ElectionService$2;->this$0:Lorg/android/agoo/service/ElectionService;

    const-string v12, "remote"

    #calls: Lorg/android/agoo/service/ElectionService;->handleElectionFinish(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lorg/android/agoo/service/ElectionService;->access$600(Lorg/android/agoo/service/ElectionService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
