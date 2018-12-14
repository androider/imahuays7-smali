.class public Lcom/facebook/drawee/backends/pipeline/b/h;
.super Ljava/lang/Object;
.source "ImagePerfState.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/g/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->f:J

    .line 26
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->g:J

    .line 27
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->h:J

    .line 28
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->i:J

    .line 29
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->j:J

    .line 32
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->k:J

    .line 33
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->l:J

    const/4 v2, -0x1

    .line 36
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->m:I

    .line 40
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->o:I

    .line 41
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->p:I

    .line 44
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->q:I

    .line 46
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->r:I

    .line 47
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->s:J

    .line 48
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->t:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->b:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 53
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->d:Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->e:Lcom/facebook/imagepipeline/g/f;

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->f:J

    .line 57
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->h:J

    .line 58
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->i:J

    .line 59
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->j:J

    .line 61
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->k:J

    .line 62
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->l:J

    const/4 v2, 0x1

    .line 64
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->m:I

    const/4 v2, 0x0

    .line 65
    iput-boolean v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->n:Z

    const/4 v2, -0x1

    .line 67
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->o:I

    .line 68
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->p:I

    .line 70
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->q:I

    .line 72
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->r:I

    .line 73
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->s:J

    .line 74
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->t:J

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->q:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->f:J

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/g/f;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/g/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->e:Lcom/facebook/imagepipeline/g/f;

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->n:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->q:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->m:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->g:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 159
    :goto_0
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->r:I

    return-void
.end method

.method public c()Lcom/facebook/drawee/backends/pipeline/b/e;
    .locals 44

    move-object/from16 v0, p0

    .line 163
    new-instance v30, Lcom/facebook/drawee/backends/pipeline/b/e;

    iget-object v2, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v5, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->d:Ljava/lang/Object;

    iget-object v6, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->e:Lcom/facebook/imagepipeline/g/f;

    iget-wide v7, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->f:J

    iget-wide v9, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->g:J

    iget-wide v11, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->h:J

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->i:J

    move-wide/from16 v31, v13

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->j:J

    move-wide/from16 v33, v13

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->k:J

    move-wide/from16 v35, v13

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->l:J

    iget v15, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->m:I

    iget-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->n:Z

    move/from16 v37, v15

    iget v15, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->o:I

    move/from16 v38, v15

    iget v15, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->p:I

    move/from16 v39, v15

    iget v15, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->r:I

    move-wide/from16 v40, v13

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->s:J

    move-wide/from16 v42, v13

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/b/h;->t:J

    move/from16 v22, v1

    move-object/from16 v1, v30

    move-wide/from16 v28, v13

    move-wide/from16 v16, v33

    move-wide/from16 v18, v35

    move-wide/from16 v20, v40

    move-wide/from16 v26, v42

    move-wide/from16 v13, v31

    move/from16 v31, v15

    move/from16 v23, v37

    move/from16 v24, v38

    move/from16 v25, v39

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v31

    invoke-direct/range {v1 .. v29}, Lcom/facebook/drawee/backends/pipeline/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/g/f;JJJJJJJIZIIIJJ)V

    return-object v30
.end method

.method public c(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->o:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->h:J

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->p:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->i:J

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->j:J

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->k:J

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->l:J

    return-void
.end method

.method public h(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->s:J

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/b/h;->t:J

    return-void
.end method
