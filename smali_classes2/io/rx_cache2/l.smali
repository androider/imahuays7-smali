.class public final Lio/rx_cache2/l;
.super Ljava/lang/Object;
.source "MigrationCache.java"


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(I[Ljava/lang/Class;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/rx_cache2/l;->a:I

    .line 37
    iput-object p2, p0, Lio/rx_cache2/l;->b:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 41
    iget v0, p0, Lio/rx_cache2/l;->a:I

    return v0
.end method

.method public b()[Ljava/lang/Class;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/rx_cache2/l;->b:[Ljava/lang/Class;

    return-object v0
.end method
