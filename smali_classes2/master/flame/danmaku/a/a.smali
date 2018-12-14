.class public Lmaster/flame/danmaku/a/a;
.super Lmaster/flame/danmaku/a/e;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/a/a$a;
    }
.end annotation


# instance fields
.field private k:I

.field private l:Lmaster/flame/danmaku/a/a$a;

.field private m:Lmaster/flame/danmaku/danmaku/model/f;

.field private final n:Ljava/lang/Object;

.field private o:I


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/a/h$a;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/a/e;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/a/h$a;)V

    const/4 p1, 0x2

    .line 46
    iput p1, p0, Lmaster/flame/danmaku/a/a;->k:I

    .line 52
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaster/flame/danmaku/a/a;->n:Ljava/lang/Object;

    .line 57
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->a()V

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/android/c;->e:F

    mul-float p1, p1, p2

    const/high16 p2, 0x4a800000    # 4194304.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmaster/flame/danmaku/a/a;->k:I

    .line 59
    new-instance p1, Lmaster/flame/danmaku/a/a$a;

    iget p2, p0, Lmaster/flame/danmaku/a/a;->k:I

    const/4 p3, 0x3

    invoke-direct {p1, p0, p2, p3}, Lmaster/flame/danmaku/a/a$a;-><init>(Lmaster/flame/danmaku/a/a;II)V

    iput-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    .line 60
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->f:Lmaster/flame/danmaku/danmaku/b/a;

    iget-object p2, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/b/a;->a(Lmaster/flame/danmaku/danmaku/model/k;)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lmaster/flame/danmaku/a/a;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lmaster/flame/danmaku/a/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lmaster/flame/danmaku/a/a;->k:I

    return p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    .line 42
    iget-object p0, p0, Lmaster/flame/danmaku/a/a;->m:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/a/a$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/b;)Lmaster/flame/danmaku/danmaku/b/a$b;
    .locals 3

    .line 118
    invoke-super {p0, p1}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/model/b;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/a;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz v0, :cond_0

    .line 123
    iget v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->k:I

    iget v1, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->l:I

    sub-int/2addr v0, v1

    const/16 v1, -0x14

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a;->h()V

    .line 125
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, p0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/a/a$a;->b(J)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 3

    .line 142
    invoke-super {p0}, Lmaster/flame/danmaku/a/e;->a()V

    .line 143
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->a()V

    .line 144
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lmaster/flame/danmaku/a/a$a;

    iget v1, p0, Lmaster/flame/danmaku/a/a;->k:I

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lmaster/flame/danmaku/a/a$a;-><init>(Lmaster/flame/danmaku/a/a;II)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    .line 146
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a;->a()V

    .line 147
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->f:Lmaster/flame/danmaku/danmaku/b/a;

    iget-object v1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/b/a;->a(Lmaster/flame/danmaku/danmaku/model/k;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a;->c()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Lmaster/flame/danmaku/a/e;->a(I)V

    .line 177
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/a$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 133
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/a/e;->a(J)V

    .line 134
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a;->a()V

    .line 137
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/a/a$a;->a(J)V

    return-void
.end method

.method public a(JJJ)V
    .locals 0

    .line 184
    invoke-super/range {p0 .. p6}, Lmaster/flame/danmaku/a/e;->a(JJJ)V

    .line 185
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1, p3, p4}, Lmaster/flame/danmaku/a/a$a;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 73
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method protected a(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 3

    .line 65
    iput-object p1, p0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    .line 66
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/f;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/a/a;->m:Lmaster/flame/danmaku/danmaku/model/f;

    .line 67
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->m:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    return-void
.end method

.method public varargs a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2

    .line 1063
    invoke-super {p0, p1, p2, p3}, Lmaster/flame/danmaku/a/e;->b(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 1065
    :cond_0
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1066
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p2, p0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/b;->b(F)V

    .line 1067
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a;->e()V

    goto/16 :goto_1

    .line 1068
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->isVisibilityRelatedTag()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    .line 1069
    array-length p1, p3

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 1070
    aget-object p2, p3, p1

    if-eqz p2, :cond_3

    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1071
    :cond_2
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz p1, :cond_3

    .line 1072
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/a/a$a;->b(J)V

    .line 1076
    :cond_3
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a;->e()V

    goto :goto_1

    .line 1077
    :cond_4
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 1086
    :cond_5
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz p1, :cond_8

    .line 1087
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/a$a;->g()V

    .line 1088
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/a/a$a;->b(J)V

    goto :goto_1

    .line 1078
    :cond_6
    :goto_0
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1079
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p2, p0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/b;->b(F)V

    .line 1081
    :cond_7
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz p1, :cond_8

    .line 1082
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/a$a;->f()V

    .line 1083
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    iget-object p2, p0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide p2, p2, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    neg-long p2, p2

    invoke-virtual {p1, p2, p3}, Lmaster/flame/danmaku/a/a$a;->b(J)V

    .line 1092
    :cond_8
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz p1, :cond_9

    .line 1093
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    new-instance p2, Lmaster/flame/danmaku/a/a$1;

    invoke-direct {p2, p0}, Lmaster/flame/danmaku/a/a$1;-><init>(Lmaster/flame/danmaku/a/a;)V

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/a$a;->a(Ljava/lang/Runnable;)V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    .line 155
    invoke-super {p0}, Lmaster/flame/danmaku/a/e;->b()V

    .line 156
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a;->d()V

    .line 157
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->f:Lmaster/flame/danmaku/danmaku/b/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/b/a;->a(Lmaster/flame/danmaku/danmaku/model/k;)V

    .line 158
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a;->b()V

    .line 160
    iput-object v1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    .line 162
    :cond_0
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->b()V

    return-void
.end method

.method protected b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lmaster/flame/danmaku/a/e;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 98
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    if-eqz v0, :cond_0

    .line 99
    iget p1, p0, Lmaster/flame/danmaku/a/a;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmaster/flame/danmaku/a/a;->o:I

    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 100
    iget-object p1, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/a$a;->h()V

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lmaster/flame/danmaku/a/a;->o:I

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->g()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 111
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 167
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->d:Lmaster/flame/danmaku/danmaku/a/a;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->d:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/danmaku/a/a;)V

    .line 171
    iget-object v0, p0, Lmaster/flame/danmaku/a/a;->l:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a;->a()V

    return-void
.end method
