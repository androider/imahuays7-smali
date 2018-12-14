.class public Lcom/shuyu/gsyvideoplayer/render/b/b;
.super Lcom/shuyu/gsyvideoplayer/render/b/a;
.source "GSYVideoGLViewSimpleRender.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private A:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

.field private final n:[F

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:[I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/nio/FloatBuffer;

.field private y:Landroid/graphics/SurfaceTexture;

.field private z:Lcom/shuyu/gsyvideoplayer/c/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/b/a;-><init>()V

    const/16 v0, 0x14

    .line 40
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->n:[F

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 50
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->o:Ljava/lang/String;

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->q:[I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->v:Z

    .line 74
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->w:Z

    .line 82
    new-instance v1, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->A:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    .line 85
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->n:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 86
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->x:Ljava/nio/FloatBuffer;

    .line 89
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->x:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->n:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->e:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 92
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->d:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->z:Lcom/shuyu/gsyvideoplayer/c/e;

    .line 315
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->a:Z

    return-void
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->A:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    :cond_0
    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->j:Z

    .line 202
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->k:Z

    return-void
.end method

.method protected a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 231
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->w:Z

    .line 233
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->z:Lcom/shuyu/gsyvideoplayer/c/e;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v5

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->z:Lcom/shuyu/gsyvideoplayer/c/e;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/c/e;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->w:Z

    return-void
.end method

.method public c()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->A:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    return-object v0
.end method

.method protected e()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->j:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->j:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 215
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 216
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 219
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 220
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected f()V
    .locals 2

    const v0, 0x84c0

    .line 225
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 226
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method protected g()V
    .locals 9

    .line 242
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->x:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->t:I

    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->x:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maPosition"

    .line 246
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->t:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    .line 248
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->x:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->u:I

    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->x:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maTextureHandle"

    .line 254
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->u:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    .line 256
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->r:I

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->d:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 260
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->s:I

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->e:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 262
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 263
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->A:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->c:Landroid/opengl/GLSurfaceView;

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;->a(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->v:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->y:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 100
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->y:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->e:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->v:Z

    .line 103
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->e()V

    .line 106
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->f()V

    .line 108
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->g()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 183
    :try_start_0
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 182
    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 118
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/b/b;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    .line 125
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    const-string p2, "aPosition"

    .line 129
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->t:I

    const-string p1, "glGetAttribLocation aPosition"

    .line 130
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 131
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->t:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 132
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aPosition"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->u:I

    const-string p1, "glGetAttribLocation aTextureCoord"

    .line 137
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 138
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->u:I

    if-ne p1, p2, :cond_2

    .line 139
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aTextureCoord"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->r:I

    const-string p1, "glGetUniformLocation uMVPMatrix"

    .line 145
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 146
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->r:I

    if-ne p1, p2, :cond_3

    .line 147
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uMVPMatrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_3
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->p:I

    const-string v0, "uSTMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->s:I

    const-string p1, "glGetUniformLocation uSTMatrix"

    .line 153
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    .line 154
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->s:I

    if-ne p1, p2, :cond_4

    .line 155
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uSTMatrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x2

    .line 159
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->q:[I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const p1, 0x8d65

    .line 161
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->q:[I

    aget p2, p2, v0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture mTextureID"

    .line 162
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Ljava/lang/String;)V

    const/16 p1, 0x2801

    const/16 p2, 0x2601

    const/16 v1, 0xde1

    .line 164
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 166
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const p2, 0x812f

    .line 168
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 170
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 173
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->q:[I

    aget p2, p2, v0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->y:Landroid/graphics/SurfaceTexture;

    .line 174
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->y:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 176
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/b/b;->y:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;->a(Landroid/view/Surface;)V

    return-void
.end method
