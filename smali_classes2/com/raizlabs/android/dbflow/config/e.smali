.class public final Lcom/raizlabs/android/dbflow/config/e;
.super Ljava/lang/Object;
.source "FlowConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/e$a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->a:Ljava/util/Set;

    .line 29
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    .line 30
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->c:Landroid/content/Context;

    .line 31
    iget-boolean p1, p1, Lcom/raizlabs/android/dbflow/config/e$a;->d:Z

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/e;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/a;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/a;

    return-object p1
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/c;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->a:Ljava/util/Set;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/a;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/e;->d:Z

    return v0
.end method
