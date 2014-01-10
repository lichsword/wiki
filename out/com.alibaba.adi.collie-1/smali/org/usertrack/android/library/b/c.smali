.class public Lorg/usertrack/android/library/b/c;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private jh:Ljava/lang/String;

.field private ji:Ljava/lang/String;

.field private jj:Z

.field private jk:Z

.field private jl:Z

.field private jm:Landroid/content/SharedPreferences;

.field private jo:Landroid/content/SharedPreferences$Editor;

.field private jr:Z

.field private mContext:Landroid/content/Context;

.field private qs:Lorg/usertrack/android/library/b/b;

.field private qt:Lorg/usertrack/android/library/b/b$a;

.field private qu:Lorg/usertrack/android/library/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14
    .parameter "context"
    .parameter "folderName"
    .parameter "configName"
    .parameter "isSafety"
    .parameter "isLessMode"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v10, ""

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jh:Ljava/lang/String;

    .line 21
    const-string v10, ""

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->ji:Ljava/lang/String;

    .line 22
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jj:Z

    .line 23
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jk:Z

    .line 24
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    .line 25
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    .line 26
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    .line 27
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    .line 28
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    .line 29
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->mContext:Landroid/content/Context;

    .line 30
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 31
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jr:Z

    .line 35
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/usertrack/android/library/b/c;->jj:Z

    .line 36
    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/usertrack/android/library/b/c;->jr:Z

    .line 37
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/usertrack/android/library/b/c;->jh:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/usertrack/android/library/b/c;->ji:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/usertrack/android/library/b/c;->mContext:Landroid/content/Context;

    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .local v6, spT:J
    const-wide/16 v4, 0x0

    .line 42
    .local v4, mySPT:J
    if-eqz p1, :cond_0

    .line 44
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 43
    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    .line 45
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    const-string v11, "t"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, mountedProperty:Ljava/lang/String;
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 49
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jk:Z

    .line 61
    :goto_0
    iget-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jk:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    if-eqz v10, :cond_2

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    .line 63
    invoke-static/range {p2 .. p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 64
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/usertrack/android/library/b/c;->au(Ljava/lang/String;)Lorg/usertrack/android/library/b/d;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 65
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    if-eqz v10, :cond_2

    .line 67
    :try_start_0
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 69
    const/4 v11, 0x0

    .line 68
    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v10

    .line 67
    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    .line 70
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    const-string v11, "t"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Lorg/usertrack/android/library/b/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 71
    if-nez p5, :cond_c

    .line 72
    cmp-long v10, v6, v4

    if-lez v10, :cond_a

    .line 74
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V

    .line 75
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 77
    const/4 v11, 0x0

    .line 75
    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
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

    .line 127
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 128
    .local v8, timestamp:J
    iget-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jr:Z

    if-eqz v10, :cond_4

    .line 129
    iget-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jr:Z

    if-eqz v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_6

    .line 130
    :cond_4
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_5

    .line 131
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 132
    .local v1, editorTmp:Landroid/content/SharedPreferences$Editor;
    const-string v10, "t2"

    invoke-interface {v1, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    .end local v1           #editorTmp:Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_1
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-eqz v10, :cond_6

    .line 137
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-interface {v10}, Lorg/usertrack/android/library/b/b;->en()Lorg/usertrack/android/library/b/b$a;

    move-result-object v3

    .line 138
    .local v3, myEditorTmp:Lorg/usertrack/android/library/b/b$a;
    const-string v10, "t2"

    invoke-interface {v3, v10, v8, v9}, Lorg/usertrack/android/library/b/b$a;->b(Ljava/lang/String;J)Lorg/usertrack/android/library/b/b$a;

    .line 139
    invoke-interface {v3}, Lorg/usertrack/android/library/b/b$a;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .end local v3           #myEditorTmp:Lorg/usertrack/android/library/b/b$a;
    .end local v8           #timestamp:J
    :cond_6
    :goto_2
    return-void

    .line 51
    :cond_7
    const-string v10, "mounted"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 52
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jk:Z

    goto/16 :goto_0

    .line 54
    :cond_8
    const-string v10, "mounted_ro"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 55
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jk:Z

    .line 56
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    goto/16 :goto_0

    .line 58
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    iput-boolean v10, p0, Lorg/usertrack/android/library/b/c;->jk:Z

    goto/16 :goto_0

    .line 78
    :cond_a
    cmp-long v10, v6, v4

    if-gez v10, :cond_b

    .line 80
    :try_start_2
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Lorg/usertrack/android/library/b/b;Landroid/content/SharedPreferences;)V

    .line 82
    const/4 v10, 0x0

    .line 81
    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    goto/16 :goto_1

    .line 119
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 83
    :cond_b
    cmp-long v10, v6, v4

    if-nez v10, :cond_2

    .line 84
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V

    .line 85
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 87
    const/4 v11, 0x0

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    goto/16 :goto_1

    .line 90
    :cond_c
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    const-string v11, "t2"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 91
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    const-string v11, "t2"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Lorg/usertrack/android/library/b/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 92
    cmp-long v10, v6, v4

    if-gez v10, :cond_d

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_d

    .line 94
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V

    .line 95
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 97
    const/4 v11, 0x0

    .line 95
    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    goto/16 :goto_1

    .line 98
    :cond_d
    cmp-long v10, v6, v4

    if-lez v10, :cond_e

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_e

    .line 100
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Lorg/usertrack/android/library/b/b;Landroid/content/SharedPreferences;)V

    .line 102
    const/4 v10, 0x0

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    goto/16 :goto_1

    .line 103
    :cond_e
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_f

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_f

    .line 104
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Lorg/usertrack/android/library/b/b;Landroid/content/SharedPreferences;)V

    .line 106
    const/4 v10, 0x0

    .line 105
    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    goto/16 :goto_1

    .line 107
    :cond_f
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_10

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_10

    .line 108
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V

    .line 109
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 111
    const/4 v11, 0x0

    .line 109
    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    goto/16 :goto_1

    .line 112
    :cond_10
    cmp-long v10, v6, v4

    if-nez v10, :cond_2

    .line 113
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-direct {p0, v10, v11}, Lorg/usertrack/android/library/b/c;->a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V

    .line 114
    iget-object v10, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 116
    const/4 v11, 0x0

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v10

    iput-object v10, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 141
    .restart local v8       #timestamp:J
    :catch_1
    move-exception v10

    goto/16 :goto_2
.end method

.method private a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V
    .locals 7
    .parameter "sp1"
    .parameter "sp2"

    .prologue
    .line 171
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 172
    invoke-interface {p2}, Lorg/usertrack/android/library/b/b;->en()Lorg/usertrack/android/library/b/b$a;

    move-result-object v3

    .line 173
    .local v3, myEditorTmp:Lorg/usertrack/android/library/b/b$a;
    if-eqz v3, :cond_1

    .line 174
    invoke-interface {v3}, Lorg/usertrack/android/library/b/b$a;->eo()Lorg/usertrack/android/library/b/b$a;

    .line 175
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    invoke-interface {v3}, Lorg/usertrack/android/library/b/b$a;->commit()Z

    .line 196
    .end local v1           #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #myEditorTmp:Lorg/usertrack/android/library/b/b$a;
    :cond_1
    return-void

    .line 177
    .restart local v1       #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v3       #myEditorTmp:Lorg/usertrack/android/library/b/b$a;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 180
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 181
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Lorg/usertrack/android/library/b/b$a;->n(Ljava/lang/String;Ljava/lang/String;)Lorg/usertrack/android/library/b/b$a;

    goto :goto_0

    .line 182
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 183
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lorg/usertrack/android/library/b/b$a;->d(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b$a;

    goto :goto_0

    .line 184
    .restart local v4       #value:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 185
    check-cast v4, Ljava/lang/Long;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v2, v5, v6}, Lorg/usertrack/android/library/b/b$a;->b(Ljava/lang/String;J)Lorg/usertrack/android/library/b/b$a;

    goto :goto_0

    .line 186
    .restart local v4       #value:Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 187
    check-cast v4, Ljava/lang/Float;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v2, v5}, Lorg/usertrack/android/library/b/b$a;->b(Ljava/lang/String;F)Lorg/usertrack/android/library/b/b$a;

    goto :goto_0

    .line 188
    .restart local v4       #value:Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 190
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 189
    invoke-interface {v3, v2, v5}, Lorg/usertrack/android/library/b/b$a;->b(Ljava/lang/String;Z)Lorg/usertrack/android/library/b/b$a;

    goto :goto_0
.end method

.method private a(Lorg/usertrack/android/library/b/b;Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "sp1"
    .parameter "sp2"

    .prologue
    .line 199
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 200
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 201
    .local v1, editorTmp:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {p1}, Lorg/usertrack/android/library/b/b;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    .local v2, itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 221
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    .end local v1           #editorTmp:Landroid/content/SharedPreferences$Editor;
    .end local v2           #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    return-void

    .line 205
    .restart local v1       #editorTmp:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .local v3, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 208
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 209
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 210
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 211
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 212
    .restart local v4       #value:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 213
    check-cast v4, Ljava/lang/Long;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 214
    .restart local v4       #value:Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 215
    check-cast v4, Ljava/lang/Float;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 216
    .restart local v4       #value:Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 218
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 217
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private aZ()Z
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-interface {v1}, Lorg/usertrack/android/library/b/b;->aW()Z

    move-result v0

    .line 229
    .local v0, isExist:Z
    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/usertrack/android/library/b/c;->commit()Z

    .line 234
    .end local v0           #isExist:Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private au(Ljava/lang/String;)Lorg/usertrack/android/library/b/d;
    .locals 3
    .parameter "folderName"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lorg/usertrack/android/library/b/c;->r(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 150
    .local v0, rootFolder:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lorg/usertrack/android/library/b/d;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/usertrack/android/library/b/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 152
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    .line 154
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ba()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    .line 241
    :cond_0
    iget-boolean v0, p0, Lorg/usertrack/android/library/b/c;->jl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-interface {v0}, Lorg/usertrack/android/library/b/b;->en()Lorg/usertrack/android/library/b/b$a;

    move-result-object v0

    iput-object v0, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    .line 244
    :cond_1
    invoke-direct {p0}, Lorg/usertrack/android/library/b/c;->aZ()Z

    .line 245
    return-void
.end method

.method private r(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "folderName"

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 159
    .local v1, sdCardFile:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 160
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, rootFolder:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
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
    .line 345
    invoke-direct {p0}, Lorg/usertrack/android/library/b/c;->ba()V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 347
    .local v0, t:J
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 349
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 351
    :cond_0
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    invoke-interface {v2}, Lorg/usertrack/android/library/b/b$a;->eo()Lorg/usertrack/android/library/b/b$a;

    .line 353
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lorg/usertrack/android/library/b/b$a;->b(Ljava/lang/String;J)Lorg/usertrack/android/library/b/b$a;

    .line 355
    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 358
    const/4 v1, 0x1

    .line 359
    .local v1, result:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    .local v2, t:J
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_1

    .line 361
    iget-boolean v5, p0, Lorg/usertrack/android/library/b/c;->jr:Z

    if-nez v5, :cond_0

    .line 362
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_0

    .line 363
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    const-string v6, "t"

    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 366
    :cond_0
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    const/4 v1, 0x0

    .line 370
    :cond_1
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_2

    .line 371
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 372
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/usertrack/android/library/b/c;->jh:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    .line 376
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, mountedProperty:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 378
    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-nez v5, :cond_7

    .line 381
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->ji:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/usertrack/android/library/b/c;->au(Ljava/lang/String;)Lorg/usertrack/android/library/b/d;

    move-result-object v4

    .line 382
    .local v4, txf:Lorg/usertrack/android/library/b/d;
    if-eqz v4, :cond_3

    .line 383
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jh:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v5

    iput-object v5, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    .line 385
    iget-boolean v5, p0, Lorg/usertrack/android/library/b/c;->jr:Z

    if-nez v5, :cond_6

    .line 386
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-direct {p0, v5, v6}, Lorg/usertrack/android/library/b/c;->a(Landroid/content/SharedPreferences;Lorg/usertrack/android/library/b/b;)V

    .line 390
    :goto_0
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-interface {v5}, Lorg/usertrack/android/library/b/b;->en()Lorg/usertrack/android/library/b/b$a;

    move-result-object v5

    iput-object v5, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    .line 400
    .end local v4           #txf:Lorg/usertrack/android/library/b/d;
    :cond_3
    :goto_1
    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 402
    const-string v5, "mounted_ro"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 403
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-eqz v5, :cond_5

    .line 405
    :cond_4
    :try_start_0
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    if-eqz v5, :cond_5

    .line 406
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qu:Lorg/usertrack/android/library/b/d;

    iget-object v6, p0, Lorg/usertrack/android/library/b/c;->jh:Ljava/lang/String;

    .line 407
    const/4 v7, 0x0

    .line 406
    invoke-virtual {v5, v6, v7}, Lorg/usertrack/android/library/b/d;->e(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b;

    move-result-object v5

    iput-object v5, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_5
    :goto_2
    return v1

    .line 388
    .restart local v4       #txf:Lorg/usertrack/android/library/b/d;
    :cond_6
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    iget-object v6, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v5, v6}, Lorg/usertrack/android/library/b/c;->a(Lorg/usertrack/android/library/b/b;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 393
    .end local v4           #txf:Lorg/usertrack/android/library/b/d;
    :cond_7
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    if-eqz v5, :cond_3

    .line 394
    iget-object v5, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    invoke-interface {v5}, Lorg/usertrack/android/library/b/b$a;->commit()Z

    move-result v5

    if-nez v5, :cond_3

    .line 395
    const/4 v1, 0x0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    const-wide/16 v0, 0x0

    .line 442
    invoke-direct {p0}, Lorg/usertrack/android/library/b/c;->aZ()Z

    .line 443
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 444
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 448
    :cond_0
    :goto_0
    return-wide v0

    .line 445
    :cond_1
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    invoke-interface {v2, p1, v0, v1}, Lorg/usertrack/android/library/b/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/usertrack/android/library/b/c;->aZ()Z

    .line 419
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->jm:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Lorg/usertrack/android/library/b/c;->qs:Lorg/usertrack/android/library/b/b;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lorg/usertrack/android/library/b/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 260
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-direct {p0}, Lorg/usertrack/android/library/b/c;->ba()V

    .line 262
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    invoke-interface {v0, p1, p2, p3}, Lorg/usertrack/android/library/b/b$a;->b(Ljava/lang/String;J)Lorg/usertrack/android/library/b/b$a;

    .line 269
    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 296
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    invoke-direct {p0}, Lorg/usertrack/android/library/b/c;->ba()V

    .line 298
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->jo:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/usertrack/android/library/b/c;->qt:Lorg/usertrack/android/library/b/b$a;

    invoke-interface {v0, p1, p2}, Lorg/usertrack/android/library/b/b$a;->n(Ljava/lang/String;Ljava/lang/String;)Lorg/usertrack/android/library/b/b$a;

    .line 305
    :cond_1
    return-void
.end method
