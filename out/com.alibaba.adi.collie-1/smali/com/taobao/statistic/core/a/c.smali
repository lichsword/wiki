.class public Lcom/taobao/statistic/core/a/c;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private jh:Ljava/lang/String;

.field private ji:Ljava/lang/String;

.field private jj:Z

.field private jk:Z

.field private jl:Z

.field private jm:Landroid/content/SharedPreferences;

.field private jn:Lcom/taobao/statistic/core/a/b;

.field private jo:Landroid/content/SharedPreferences$Editor;

.field private jp:Lcom/taobao/statistic/core/a/b$a;

.field private jq:Lcom/taobao/statistic/core/a/d;

.field private jr:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14
    .parameter "context"
    .parameter "folderName"
    .parameter "configName"
    .parameter "isSafety"
    .parameter "isLessMode"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v10, ""

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    .line 22
    const-string v10, ""

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->ji:Ljava/lang/String;

    .line 23
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jj:Z

    .line 24
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jk:Z

    .line 25
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    .line 26
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    .line 27
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    .line 28
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    .line 29
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    .line 30
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->mContext:Landroid/content/Context;

    .line 31
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    .line 32
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jr:Z

    .line 36
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/taobao/statistic/core/a/c;->jj:Z

    .line 37
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/taobao/statistic/core/a/c;->jr:Z

    .line 38
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/taobao/statistic/core/a/c;->ji:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/taobao/statistic/core/a/c;->mContext:Landroid/content/Context;

    .line 41
    const-wide/16 v6, 0x0

    .line 42
    .local v6, spT:J
    const-wide/16 v4, 0x0

    .line 43
    .local v4, mySPT:J
    if-eqz p1, :cond_0

    .line 44
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    .line 46
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    const-string v11, "t"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, mountedProperty:Ljava/lang/String;
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 50
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jk:Z

    .line 62
    :goto_0
    iget-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jk:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    if-eqz v10, :cond_2

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    .line 64
    invoke-static/range {p2 .. p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 65
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/a/c;->q(Ljava/lang/String;)Lcom/taobao/statistic/core/a/d;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    .line 66
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    if-eqz v10, :cond_2

    .line 68
    :try_start_0
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    .line 71
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    const-string v11, "t"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/taobao/statistic/core/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 72
    if-nez p5, :cond_c

    .line 73
    cmp-long v10, v6, v4

    if-lez v10, :cond_a

    .line 75
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V

    .line 76
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_2
    :goto_1
    cmp-long v10, v6, v4

    if-nez v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_6

    .line 128
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 129
    .local v8, timestamp:J
    iget-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jr:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jr:Z

    if-eqz v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_6

    .line 131
    :cond_4
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_5

    .line 132
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    .local v1, editorTmp:Landroid/content/SharedPreferences$Editor;
    const-string v10, "t2"

    invoke-interface {v1, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    .end local v1           #editorTmp:Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v10, :cond_6

    .line 138
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v10}, Lcom/taobao/statistic/core/a/b;->aX()Lcom/taobao/statistic/core/a/b$a;

    move-result-object v3

    .line 139
    .local v3, myEditorTmp:Lcom/taobao/statistic/core/a/b$a;
    const-string v10, "t2"

    invoke-interface {v3, v10, v8, v9}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;J)Lcom/taobao/statistic/core/a/b$a;

    .line 140
    invoke-interface {v3}, Lcom/taobao/statistic/core/a/b$a;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v3           #myEditorTmp:Lcom/taobao/statistic/core/a/b$a;
    .end local v8           #timestamp:J
    :cond_6
    :goto_2
    return-void

    .line 52
    :cond_7
    const-string v10, "mounted"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 53
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jk:Z

    goto/16 :goto_0

    .line 54
    :cond_8
    const-string v10, "mounted_ro"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 56
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jk:Z

    .line 57
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    goto/16 :goto_0

    .line 59
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    iput-boolean v10, p0, Lcom/taobao/statistic/core/a/c;->jk:Z

    goto/16 :goto_0

    .line 79
    :cond_a
    cmp-long v10, v6, v4

    if-gez v10, :cond_b

    .line 81
    :try_start_2
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Lcom/taobao/statistic/core/a/b;Landroid/content/SharedPreferences;)V

    .line 82
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    goto/16 :goto_1

    .line 120
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 84
    :cond_b
    cmp-long v10, v6, v4

    if-nez v10, :cond_2

    .line 85
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V

    .line 86
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    goto/16 :goto_1

    .line 91
    :cond_c
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    const-string v11, "t2"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 92
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    const-string v11, "t2"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/taobao/statistic/core/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 93
    cmp-long v10, v6, v4

    if-gez v10, :cond_d

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_d

    .line 95
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V

    .line 96
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    goto/16 :goto_1

    .line 99
    :cond_d
    cmp-long v10, v6, v4

    if-lez v10, :cond_e

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_e

    .line 101
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Lcom/taobao/statistic/core/a/b;Landroid/content/SharedPreferences;)V

    .line 102
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    goto/16 :goto_1

    .line 104
    :cond_e
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_f

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_f

    .line 105
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Lcom/taobao/statistic/core/a/b;Landroid/content/SharedPreferences;)V

    .line 106
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    goto/16 :goto_1

    .line 108
    :cond_f
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_10

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_10

    .line 109
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V

    .line 110
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    goto/16 :goto_1

    .line 113
    :cond_10
    cmp-long v10, v6, v4

    if-nez v10, :cond_2

    .line 114
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-direct {p0, v10, v11}, Lcom/taobao/statistic/core/a/c;->a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V

    .line 115
    iget-object v10, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 142
    .restart local v8       #timestamp:J
    :catch_1
    move-exception v10

    goto/16 :goto_2
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V
    .locals 7
    .parameter "sp1"
    .parameter "sp2"

    .prologue
    .line 172
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 173
    invoke-interface {p2}, Lcom/taobao/statistic/core/a/b;->aX()Lcom/taobao/statistic/core/a/b$a;

    move-result-object v3

    .line 174
    .local v3, myEditorTmp:Lcom/taobao/statistic/core/a/b$a;
    if-eqz v3, :cond_6

    .line 175
    invoke-interface {v3}, Lcom/taobao/statistic/core/a/b$a;->aY()Lcom/taobao/statistic/core/a/b$a;

    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 181
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 182
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Lcom/taobao/statistic/core/a/b$a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/statistic/core/a/b$a;

    goto :goto_0

    .line 183
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 184
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b$a;

    goto :goto_0

    .line 185
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 186
    check-cast v4, Ljava/lang/Long;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v2, v5, v6}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;J)Lcom/taobao/statistic/core/a/b$a;

    goto :goto_0

    .line 187
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 188
    check-cast v4, Ljava/lang/Float;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;F)Lcom/taobao/statistic/core/a/b$a;

    goto :goto_0

    .line 189
    .restart local v4       #value:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 190
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;Z)Lcom/taobao/statistic/core/a/b$a;

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2           #key:Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Lcom/taobao/statistic/core/a/b$a;->commit()Z

    .line 197
    .end local v1           #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #myEditorTmp:Lcom/taobao/statistic/core/a/b$a;
    :cond_6
    return-void
.end method

.method private a(Lcom/taobao/statistic/core/a/b;Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "sp1"
    .parameter "sp2"

    .prologue
    .line 200
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 201
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    .local v1, editorTmp:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_6

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {p1}, Lcom/taobao/statistic/core/a/b;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    .local v2, itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 209
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 210
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 211
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 212
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 213
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 214
    check-cast v4, Ljava/lang/Long;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 215
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 216
    check-cast v4, Ljava/lang/Float;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 217
    .restart local v4       #value:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 218
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    .end local v1           #editorTmp:Landroid/content/SharedPreferences$Editor;
    .end local v2           #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_6
    return-void
.end method

.method private aZ()Z
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v1}, Lcom/taobao/statistic/core/a/b;->aW()Z

    move-result v0

    .line 230
    .local v0, isExist:Z
    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 235
    .end local v0           #isExist:Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ba()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/statistic/core/a/c;->jl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v0}, Lcom/taobao/statistic/core/a/b;->aX()Lcom/taobao/statistic/core/a/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->aZ()Z

    .line 246
    return-void
.end method

.method private q(Ljava/lang/String;)Lcom/taobao/statistic/core/a/d;
    .locals 3
    .parameter "folderName"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/taobao/statistic/core/a/c;->r(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, rootFolder:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lcom/taobao/statistic/core/a/d;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/statistic/core/a/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    .line 153
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private r(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "folderName"

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 160
    .local v1, sdCardFile:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 161
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, rootFolder:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 168
    .end local v0           #rootFolder:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->ba()V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, t:J
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 350
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    invoke-interface {v2}, Lcom/taobao/statistic/core/a/b$a;->aY()Lcom/taobao/statistic/core/a/b$a;

    .line 354
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;J)Lcom/taobao/statistic/core/a/b$a;

    .line 356
    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 359
    const/4 v1, 0x1

    .line 360
    .local v1, result:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 361
    .local v2, t:J
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_1

    .line 362
    iget-boolean v5, p0, Lcom/taobao/statistic/core/a/c;->jr:Z

    if-nez v5, :cond_0

    .line 363
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_0

    .line 364
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    const-string v6, "t"

    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 367
    :cond_0
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 368
    const/4 v1, 0x0

    .line 371
    :cond_1
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_2

    .line 372
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 373
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    .line 377
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, mountedProperty:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 379
    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-nez v5, :cond_7

    .line 381
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->ji:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/taobao/statistic/core/a/c;->q(Ljava/lang/String;)Lcom/taobao/statistic/core/a/d;

    move-result-object v4

    .line 383
    .local v4, txf:Lcom/taobao/statistic/core/a/d;
    if-eqz v4, :cond_3

    .line 384
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    .line 386
    iget-boolean v5, p0, Lcom/taobao/statistic/core/a/c;->jr:Z

    if-nez v5, :cond_6

    .line 387
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-direct {p0, v5, v6}, Lcom/taobao/statistic/core/a/c;->a(Landroid/content/SharedPreferences;Lcom/taobao/statistic/core/a/b;)V

    .line 391
    :goto_0
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v5}, Lcom/taobao/statistic/core/a/b;->aX()Lcom/taobao/statistic/core/a/b$a;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    .line 401
    .end local v4           #txf:Lcom/taobao/statistic/core/a/d;
    :cond_3
    :goto_1
    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "mounted_ro"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v5, :cond_5

    .line 406
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    if-eqz v5, :cond_5

    .line 407
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    iget-object v6, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_5
    :goto_2
    return v1

    .line 389
    .restart local v4       #txf:Lcom/taobao/statistic/core/a/d;
    :cond_6
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    iget-object v6, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v5, v6}, Lcom/taobao/statistic/core/a/c;->a(Lcom/taobao/statistic/core/a/b;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 394
    .end local v4           #txf:Lcom/taobao/statistic/core/a/d;
    :cond_7
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-eqz v5, :cond_3

    .line 395
    iget-object v5, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    invoke-interface {v5}, Lcom/taobao/statistic/core/a/b$a;->commit()Z

    move-result v5

    if-nez v5, :cond_3

    .line 396
    const/4 v1, 0x0

    goto :goto_1

    .line 410
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->aZ()Z

    .line 474
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v0}, Lcom/taobao/statistic/core/a/b;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->aZ()Z

    .line 434
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v1, p1, v0}, Lcom/taobao/statistic/core/a/b;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    const-wide/16 v0, 0x0

    .line 443
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->aZ()Z

    .line 444
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 449
    :cond_0
    :goto_0
    return-wide v0

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    invoke-interface {v2, p1, v0, v1}, Lcom/taobao/statistic/core/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->aZ()Z

    .line 420
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lcom/taobao/statistic/core/a/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 249
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->ba()V

    .line 251
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b$a;

    .line 258
    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 261
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->ba()V

    .line 263
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/statistic/core/a/b$a;->a(Ljava/lang/String;J)Lcom/taobao/statistic/core/a/b$a;

    .line 270
    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 297
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->ba()V

    .line 299
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/taobao/statistic/core/a/b$a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/statistic/core/a/b$a;

    .line 306
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/core/a/c;->jm:Landroid/content/SharedPreferences;

    .line 327
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, mountedProperty:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;

    if-eqz v1, :cond_2

    .line 334
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/taobao/statistic/core/a/c;->jq:Lcom/taobao/statistic/core/a/d;

    iget-object v2, p0, Lcom/taobao/statistic/core/a/c;->jh:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/taobao/statistic/core/a/d;->b(Ljava/lang/String;I)Lcom/taobao/statistic/core/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/core/a/c;->jn:Lcom/taobao/statistic/core/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_2
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 309
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/taobao/statistic/core/a/c;->ba()V

    .line 311
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/taobao/statistic/core/a/c;->jp:Lcom/taobao/statistic/core/a/b$a;

    invoke-interface {v0, p1}, Lcom/taobao/statistic/core/a/b$a;->p(Ljava/lang/String;)Lcom/taobao/statistic/core/a/b$a;

    .line 318
    :cond_1
    return-void
.end method
