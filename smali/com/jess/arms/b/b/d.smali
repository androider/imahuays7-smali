.class public final Lcom/jess/arms/b/b/d;
.super Ljava/lang/Object;
.source "AppModule_ProvideFragmentLifecyclesFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Ljava/util/List<",
        "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/jess/arms/b/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/jess/arms/b/b/d;

    invoke-direct {v0}, Lcom/jess/arms/b/b/d;-><init>()V

    sput-object v0, Lcom/jess/arms/b/b/d;->a:Lcom/jess/arms/b/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/jess/arms/b/b/d;
    .locals 1

    .line 26
    sget-object v0, Lcom/jess/arms/b/b/d;->a:Lcom/jess/arms/b/b/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/jess/arms/b/b/a;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 20
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/jess/arms/b/b/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
