.class public final Lb/a/a;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a$a;
    }
.end annotation


# static fields
.field static volatile a:[Lb/a/a$a;

.field private static final b:[Lb/a/a$a;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lb/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    new-array v0, v0, [Lb/a/a$a;

    sput-object v0, Lb/a/a;->b:[Lb/a/a$a;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb/a/a;->c:Ljava/util/List;

    .line 215
    sget-object v0, Lb/a/a;->b:[Lb/a/a$a;

    sput-object v0, Lb/a/a;->a:[Lb/a/a$a;

    .line 218
    new-instance v0, Lb/a/a$1;

    invoke-direct {v0}, Lb/a/a$1;-><init>()V

    sput-object v0, Lb/a/a;->d:Lb/a/a$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lb/a/a$a;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 138
    sget-object v0, Lb/a/a;->a:[Lb/a/a$a;

    .line 139
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 140
    iget-object v3, v3, Lb/a/a$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    sget-object p0, Lb/a/a;->d:Lb/a/a$a;

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 38
    sget-object v0, Lb/a/a;->d:Lb/a/a$a;

    invoke-virtual {v0, p0, p1}, Lb/a/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 68
    sget-object v0, Lb/a/a;->d:Lb/a/a$a;

    invoke-virtual {v0, p0, p1}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 83
    sget-object v0, Lb/a/a;->d:Lb/a/a$a;

    invoke-virtual {v0, p0, p1}, Lb/a/a$a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
