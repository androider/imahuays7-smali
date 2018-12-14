.class public Lcom/raizlabs/android/dbflow/sql/language/a/b;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/a/a;
.implements Lcom/raizlabs/android/dbflow/sql/language/i;
.implements Lcom/raizlabs/android/dbflow/sql/language/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/language/a/a<",
        "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
        "TT;>;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/i;",
        "Lcom/raizlabs/android/dbflow/sql/language/j<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final c:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected d:Lcom/raizlabs/android/dbflow/sql/language/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-string v1, "*"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/l;->a(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/l;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-string v1, "?"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/l;->a(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/l;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/l;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/sql/language/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/sql/language/l;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->c:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->c:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 51
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/l$a;

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/m<",
            "TT;>;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->d()Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/m;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->c()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/m<",
            "TT;>;"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->d()Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/m;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-object v0
.end method

.method protected d()Lcom/raizlabs/android/dbflow/sql/language/m;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/m<",
            "TT;>;"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->c()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/m;->a(Lcom/raizlabs/android/dbflow/sql/language/l;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->c()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
