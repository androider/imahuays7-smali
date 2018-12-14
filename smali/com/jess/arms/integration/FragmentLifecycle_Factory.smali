.class public final Lcom/jess/arms/integration/FragmentLifecycle_Factory;
.super Ljava/lang/Object;
.source "FragmentLifecycle_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/integration/FragmentLifecycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/jess/arms/integration/FragmentLifecycle_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/jess/arms/integration/FragmentLifecycle_Factory;

    invoke-direct {v0}, Lcom/jess/arms/integration/FragmentLifecycle_Factory;-><init>()V

    sput-object v0, Lcom/jess/arms/integration/FragmentLifecycle_Factory;->INSTANCE:Lcom/jess/arms/integration/FragmentLifecycle_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/jess/arms/integration/FragmentLifecycle_Factory;
    .locals 1

    .line 19
    sget-object v0, Lcom/jess/arms/integration/FragmentLifecycle_Factory;->INSTANCE:Lcom/jess/arms/integration/FragmentLifecycle_Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/jess/arms/integration/FragmentLifecycle;
    .locals 1

    .line 15
    new-instance v0, Lcom/jess/arms/integration/FragmentLifecycle;

    invoke-direct {v0}, Lcom/jess/arms/integration/FragmentLifecycle;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/jess/arms/integration/FragmentLifecycle_Factory;->get()Lcom/jess/arms/integration/FragmentLifecycle;

    move-result-object v0

    return-object v0
.end method
