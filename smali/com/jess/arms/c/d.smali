.class public Lcom/jess/arms/c/d;
.super Ljava/lang/Object;
.source "DataHelper.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 262
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Lcom/jess/arms/c/d;->a(Ljava/io/File;)Ljava/io/File;

    :cond_0
    return-object v0

    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 76
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 114
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 117
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 140
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 143
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 63
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 100
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 103
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Ljava/io/File;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 315
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 316
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 317
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long v6, v0, v4

    move-wide v0, v6

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 319
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v7, v0, v5

    .line 320
    invoke-static {v4}, Lcom/jess/arms/c/d;->b(Ljava/io/File;)J

    move-result-wide v0

    add-long v4, v7, v0

    move-wide v0, v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 86
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "config"

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 89
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 127
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 130
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 339
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 340
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p0, v0

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    invoke-static {v2}, Lcom/jess/arms/c/d;->c(Ljava/io/File;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 153
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 156
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "config"

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    .line 167
    :cond_0
    sget-object p0, Lcom/jess/arms/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
