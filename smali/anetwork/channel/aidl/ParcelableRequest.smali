.class public Lanetwork/channel/aidl/ParcelableRequest;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/ParcelableRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field private b:Lanetwork/channel/d;

.field private c:Lanet/channel/request/BodyEntry;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanetwork/channel/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanetwork/channel/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lanetwork/channel/aidl/h;

    invoke-direct {v0}, Lanetwork/channel/aidl/h;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->j:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 11

    .line 138
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableRequest;-><init>()V

    const/4 v1, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->d:I

    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->e:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    const/4 v2, 0x1

    .line 148
    new-array v3, v2, [Z

    .line 149
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 150
    aget-boolean v3, v3, v1

    iput-boolean v3, v0, Lanetwork/channel/aidl/ParcelableRequest;->g:Z

    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/lang/String;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    const-class v4, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    .line 157
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 158
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v7, "&"

    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_0

    .line 161
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    if-eq v7, v8, :cond_0

    .line 162
    new-instance v8, Lanetwork/channel/entity/a;

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lanetwork/channel/entity/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v6, v0, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-class v3, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    .line 171
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 172
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v7, "&"

    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_2

    .line 175
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    if-eq v7, v8, :cond_2

    .line 176
    iget-object v8, v0, Lanetwork/channel/aidl/ParcelableRequest;->j:Ljava/util/List;

    new-instance v9, Lanetwork/channel/entity/d;

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Lanetwork/channel/entity/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 182
    :cond_3
    const-class v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lanet/channel/request/BodyEntry;

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanet/channel/request/BodyEntry;

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    .line 186
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->k:I

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->l:I

    .line 190
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->m:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->n:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    const-class v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v0, Lanetwork/channel/aidl/ParcelableRequest;->o:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v2, "anet.ParcelableRequest"

    const-string v3, "[readFromParcel]"

    const/4 v4, 0x0

    .line 198
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, p0, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 76
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 81
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v0}, Lanetwork/channel/d;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v0}, Lanetwork/channel/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 87
    new-array v1, v0, [Z

    iget-object v2, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v2}, Lanetwork/channel/d;->a()Z

    move-result v2

    aput-boolean v2, v1, p2

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 90
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v2, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v2}, Lanetwork/channel/d;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 94
    :goto_0
    iget-object v3, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v3}, Lanetwork/channel/d;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 95
    iget-object v3, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v3}, Lanetwork/channel/d;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v4}, Lanetwork/channel/d;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanetwork/channel/a;

    invoke-interface {v4}, Lanetwork/channel/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v4}, Lanetwork/channel/d;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanetwork/channel/a;

    invoke-interface {v4}, Lanetwork/channel/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->e()Ljava/util/List;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 105
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 106
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanetwork/channel/c;

    if-eqz v4, :cond_3

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lanetwork/channel/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lanetwork/channel/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 114
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanet/channel/request/BodyEntry;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-wide v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->h()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/d;

    invoke-interface {v1}, Lanetwork/channel/d;->k()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    .line 127
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "anet.ParcelableRequest"

    const-string v1, "[writeToParcel]"

    const/4 v2, 0x0

    .line 133
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1, p2}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method
