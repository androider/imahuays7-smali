.class public Lorg/apache/commons/io/output/b;
.super Lorg/apache/commons/io/output/c;
.source "DeferredFileOutputStream.java"


# instance fields
.field private a:Lorg/apache/commons/io/output/a;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/io/File;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/io/File;

.field private g:Z


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 101
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/b;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/c;-><init>(I)V

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lorg/apache/commons/io/output/b;->g:Z

    .line 180
    iput-object p2, p0, Lorg/apache/commons/io/output/b;->c:Ljava/io/File;

    .line 181
    iput-object p3, p0, Lorg/apache/commons/io/output/b;->d:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lorg/apache/commons/io/output/b;->e:Ljava/lang/String;

    .line 183
    iput-object p5, p0, Lorg/apache/commons/io/output/b;->f:Ljava/io/File;

    .line 185
    new-instance p1, Lorg/apache/commons/io/output/a;

    invoke-direct {p1, p6}, Lorg/apache/commons/io/output/a;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/a;

    .line 186
    iget-object p1, p0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/a;

    iput-object p1, p0, Lorg/apache/commons/io/output/b;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method protected a()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/io/output/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/output/b;->f:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/b;->c:Ljava/io/File;

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->c:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/a;->b(Ljava/io/File;)V

    .line 223
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/apache/commons/io/output/b;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/a;

    invoke-virtual {v1, v0}, Lorg/apache/commons/io/output/a;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    iput-object v0, p0, Lorg/apache/commons/io/output/b;->b:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/a;

    return-void

    :catch_0
    move-exception v1

    .line 227
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 228
    throw v1
.end method

.method public c()Z
    .locals 1

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/io/output/b;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-super {p0}, Lorg/apache/commons/io/output/c;->close()V

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lorg/apache/commons/io/output/b;->g:Z

    return-void
.end method

.method public d()[B
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/a;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/a;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->a()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/io/output/b;->c:Ljava/io/File;

    return-object v0
.end method
