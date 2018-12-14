.class public Lcom/facebook/drawee/view/b;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/c/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/drawable/t;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/facebook/drawee/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/c/a;

.field private final f:Lcom/facebook/drawee/components/DraweeEventTracker;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/c/b;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/c/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 46
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    .line 52
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->a()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/c/b;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/drawee/c/b;Landroid/content/Context;)Lcom/facebook/drawee/view/b;
    .locals 1
    .param p0    # Lcom/facebook/drawee/c/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lcom/facebook/drawee/c/b;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/drawee/view/b<",
            "TDH;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/facebook/drawee/view/b;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/b;-><init>(Lcom/facebook/drawee/c/b;)V

    .line 62
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->a(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Lcom/facebook/drawee/drawable/t;)V
    .locals 2
    .param p1    # Lcom/facebook/drawee/drawable/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    instance-of v1, v0, Lcom/facebook/drawee/drawable/s;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Lcom/facebook/drawee/drawable/s;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/s;->a(Lcom/facebook/drawee/drawable/t;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 266
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    .line 267
    invoke-interface {v0}, Lcom/facebook/drawee/c/a;->k()Lcom/facebook/drawee/c/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    invoke-interface {v0}, Lcom/facebook/drawee/c/a;->m()V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 278
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    invoke-interface {v0}, Lcom/facebook/drawee/c/a;->n()V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->h()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->i()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 147
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    const-string v1, "%x: Draw requested for a non-attached controller %x. %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 156
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    .line 157
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 158
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 153
    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput-boolean v4, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 161
    iput-boolean v4, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 162
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->j()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/drawee/c/a;)V
    .locals 3
    .param p1    # Lcom/facebook/drawee/c/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 179
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->i()V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 187
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/b;)V

    .line 189
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    .line 190
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 192
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    iget-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    invoke-interface {p1, v1}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/b;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    :goto_0
    if-eqz v0, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->h()V

    :cond_3
    return-void
.end method

.method public a(Lcom/facebook/drawee/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 214
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->g()Z

    move-result v0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, v1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/drawable/t;)V

    .line 217
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/c/b;

    iput-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    .line 218
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    invoke-interface {v1}, Lcom/facebook/drawee/c/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/view/b;->a(Z)V

    .line 220
    invoke-direct {p0, p0}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/drawable/t;)V

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/b;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 137
    iput-boolean p1, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 138
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->j()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/c/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 89
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->j()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 113
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->j()V

    return-void
.end method

.method public d()Lcom/facebook/drawee/c/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    return-object v0
.end method

.method public e()Lcom/facebook/drawee/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/c/b;

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    invoke-interface {v0}, Lcom/facebook/drawee/c/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/c/a;

    invoke-interface {v0}, Lcom/facebook/drawee/c/a;->k()Lcom/facebook/drawee/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lcom/facebook/drawee/c/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 293
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "controllerAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "holderAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "drawableVisible"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "events"

    iget-object v2, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 297
    invoke-virtual {v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
