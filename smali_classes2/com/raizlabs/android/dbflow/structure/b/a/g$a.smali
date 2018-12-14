.class public final Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/structure/b/a/c;

.field final b:Lcom/raizlabs/android/dbflow/config/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field c:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field d:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field e:Ljava/lang/String;

.field f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/c;Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->f:Z

    .line 186
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/c;

    .line 187
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->b:Lcom/raizlabs/android/dbflow/config/b;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/structure/b/a/g$a;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->g:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->d:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method

.method public a()Lcom/raizlabs/android/dbflow/structure/b/a/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 252
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/g$a;)V

    return-object v0
.end method
