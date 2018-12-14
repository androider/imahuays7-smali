.class final Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;
.super Ljava/util/HashMap;
.source "SQLiteType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/SQLiteType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v0, [B

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v0, [Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v0, Lcom/raizlabs/android/dbflow/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
