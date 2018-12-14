.class public abstract Lcom/transitionseverywhere/e;
.super Ljava/lang/Object;
.source "PathMotion.java"


# static fields
.field public static final a:Lcom/transitionseverywhere/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/transitionseverywhere/e$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/e$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/e;->a:Lcom/transitionseverywhere/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(FFFF)Landroid/graphics/Path;
.end method
