.class public Lcom/raizlabs/android/dbflow/sql/language/a/c;
.super Lcom/raizlabs/android/dbflow/sql/language/a/b;
.source "TypeConvertedProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private e:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TV;TT;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Lcom/raizlabs/android/dbflow/sql/language/a/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/l;ZLcom/raizlabs/android/dbflow/sql/language/a/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/sql/language/l;",
            "Z",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c$a;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/l;)V

    .line 39
    iput-boolean p3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->f:Z

    .line 40
    iput-object p4, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->g:Lcom/raizlabs/android/dbflow/sql/language/a/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLcom/raizlabs/android/dbflow/sql/language/a/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c$a;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    iput-boolean p3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->f:Z

    .line 48
    iput-object p4, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->g:Lcom/raizlabs/android/dbflow/sql/language/a/c$a;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/sql/language/a/c;)Lcom/raizlabs/android/dbflow/sql/language/a/c$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->g:Lcom/raizlabs/android/dbflow/sql/language/a/c$a;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->e:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    iget-boolean v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->f:Z

    xor-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/raizlabs/android/dbflow/sql/language/a/c$1;

    invoke-direct {v4, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c$1;-><init>(Lcom/raizlabs/android/dbflow/sql/language/a/c;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/l;ZLcom/raizlabs/android/dbflow/sql/language/a/c$a;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->e:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->e:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object v0
.end method

.method protected d()Lcom/raizlabs/android/dbflow/sql/language/m;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/m<",
            "TV;>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->c()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->g:Lcom/raizlabs/android/dbflow/sql/language/a/c$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->c:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c$a;->getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object v1

    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->f:Z

    invoke-static {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/m;->a(Lcom/raizlabs/android/dbflow/sql/language/l;Lcom/raizlabs/android/dbflow/a/h;Z)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v0

    return-object v0
.end method
