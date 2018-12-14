.class public final enum Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
.super Ljava/lang/Enum;
.source "OneToMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/annotation/OneToMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum DELETE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum LOAD:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum SAVE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v1, "LOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->LOAD:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v1, "DELETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->DELETE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v1, "SAVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->SAVE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 42
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v1, "ALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->ALL:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->LOAD:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->DELETE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->SAVE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->ALL:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->a:[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
    .locals 1

    .line 21
    const-class v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
    .locals 1

    .line 21
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->a:[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    return-object v0
.end method
