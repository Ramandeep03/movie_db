// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MoviesTable extends Movies with TableInfo<$MoviesTable, MovieTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoviesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _adultMeta = const VerificationMeta('adult');
  @override
  late final GeneratedColumn<bool> adult = GeneratedColumn<bool>(
    'adult',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("adult" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _backdropMeta = const VerificationMeta(
    'backdrop',
  );
  @override
  late final GeneratedColumn<String> backdrop = GeneratedColumn<String>(
    'backdrop',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> genreIds =
      GeneratedColumn<String>(
        'genre_ids',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<int>>($MoviesTable.$convertergenreIds);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _originalLanguageMeta = const VerificationMeta(
    'originalLanguage',
  );
  @override
  late final GeneratedColumn<String> originalLanguage = GeneratedColumn<String>(
    'original_language',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _originalTitleMeta = const VerificationMeta(
    'originalTitle',
  );
  @override
  late final GeneratedColumn<String> originalTitle = GeneratedColumn<String>(
    'original_title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _overviewMeta = const VerificationMeta(
    'overview',
  );
  @override
  late final GeneratedColumn<String> overview = GeneratedColumn<String>(
    'overview',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _popularityMeta = const VerificationMeta(
    'popularity',
  );
  @override
  late final GeneratedColumn<int> popularity = GeneratedColumn<int>(
    'popularity',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _posterPathMeta = const VerificationMeta(
    'posterPath',
  );
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
    'poster_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _releaseDateMeta = const VerificationMeta(
    'releaseDate',
  );
  @override
  late final GeneratedColumn<String> releaseDate = GeneratedColumn<String>(
    'release_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _videoMeta = const VerificationMeta('video');
  @override
  late final GeneratedColumn<bool> video = GeneratedColumn<bool>(
    'video',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("video" IN (0, 1))',
    ),
  );
  static const VerificationMeta _voteAverageMeta = const VerificationMeta(
    'voteAverage',
  );
  @override
  late final GeneratedColumn<double> voteAverage = GeneratedColumn<double>(
    'vote_average',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _voteCountMeta = const VerificationMeta(
    'voteCount',
  );
  @override
  late final GeneratedColumn<int> voteCount = GeneratedColumn<int>(
    'vote_count',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _belongToCollectionMeta =
      const VerificationMeta('belongToCollection');
  @override
  late final GeneratedColumn<String> belongToCollection =
      GeneratedColumn<String>(
        'belong_to_collection',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _budgetMeta = const VerificationMeta('budget');
  @override
  late final GeneratedColumn<int> budget = GeneratedColumn<int>(
    'budget',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _homepageMeta = const VerificationMeta(
    'homepage',
  );
  @override
  late final GeneratedColumn<String> homepage = GeneratedColumn<String>(
    'homepage',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imdbIdMeta = const VerificationMeta('imdbId');
  @override
  late final GeneratedColumn<String> imdbId = GeneratedColumn<String>(
    'imdb_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _revenueMeta = const VerificationMeta(
    'revenue',
  );
  @override
  late final GeneratedColumn<int> revenue = GeneratedColumn<int>(
    'revenue',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _runtimeMeta = const VerificationMeta(
    'runtime',
  );
  @override
  late final GeneratedColumn<int> runtime = GeneratedColumn<int>(
    'runtime',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _taglineMeta = const VerificationMeta(
    'tagline',
  );
  @override
  late final GeneratedColumn<String> tagline = GeneratedColumn<String>(
    'tagline',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isFavouriteMeta = const VerificationMeta(
    'isFavourite',
  );
  @override
  late final GeneratedColumn<bool> isFavourite = GeneratedColumn<bool>(
    'is_favourite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favourite" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    adult,
    backdrop,
    genreIds,
    id,
    originalLanguage,
    originalTitle,
    overview,
    popularity,
    posterPath,
    releaseDate,
    title,
    video,
    voteAverage,
    voteCount,
    belongToCollection,
    budget,
    homepage,
    imdbId,
    revenue,
    runtime,
    status,
    tagline,
    isFavourite,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movies';
  @override
  VerificationContext validateIntegrity(
    Insertable<MovieTable> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('adult')) {
      context.handle(
        _adultMeta,
        adult.isAcceptableOrUnknown(data['adult']!, _adultMeta),
      );
    }
    if (data.containsKey('backdrop')) {
      context.handle(
        _backdropMeta,
        backdrop.isAcceptableOrUnknown(data['backdrop']!, _backdropMeta),
      );
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('original_language')) {
      context.handle(
        _originalLanguageMeta,
        originalLanguage.isAcceptableOrUnknown(
          data['original_language']!,
          _originalLanguageMeta,
        ),
      );
    }
    if (data.containsKey('original_title')) {
      context.handle(
        _originalTitleMeta,
        originalTitle.isAcceptableOrUnknown(
          data['original_title']!,
          _originalTitleMeta,
        ),
      );
    }
    if (data.containsKey('overview')) {
      context.handle(
        _overviewMeta,
        overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta),
      );
    }
    if (data.containsKey('popularity')) {
      context.handle(
        _popularityMeta,
        popularity.isAcceptableOrUnknown(data['popularity']!, _popularityMeta),
      );
    }
    if (data.containsKey('poster_path')) {
      context.handle(
        _posterPathMeta,
        posterPath.isAcceptableOrUnknown(data['poster_path']!, _posterPathMeta),
      );
    }
    if (data.containsKey('release_date')) {
      context.handle(
        _releaseDateMeta,
        releaseDate.isAcceptableOrUnknown(
          data['release_date']!,
          _releaseDateMeta,
        ),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('video')) {
      context.handle(
        _videoMeta,
        video.isAcceptableOrUnknown(data['video']!, _videoMeta),
      );
    }
    if (data.containsKey('vote_average')) {
      context.handle(
        _voteAverageMeta,
        voteAverage.isAcceptableOrUnknown(
          data['vote_average']!,
          _voteAverageMeta,
        ),
      );
    }
    if (data.containsKey('vote_count')) {
      context.handle(
        _voteCountMeta,
        voteCount.isAcceptableOrUnknown(data['vote_count']!, _voteCountMeta),
      );
    }
    if (data.containsKey('belong_to_collection')) {
      context.handle(
        _belongToCollectionMeta,
        belongToCollection.isAcceptableOrUnknown(
          data['belong_to_collection']!,
          _belongToCollectionMeta,
        ),
      );
    }
    if (data.containsKey('budget')) {
      context.handle(
        _budgetMeta,
        budget.isAcceptableOrUnknown(data['budget']!, _budgetMeta),
      );
    }
    if (data.containsKey('homepage')) {
      context.handle(
        _homepageMeta,
        homepage.isAcceptableOrUnknown(data['homepage']!, _homepageMeta),
      );
    }
    if (data.containsKey('imdb_id')) {
      context.handle(
        _imdbIdMeta,
        imdbId.isAcceptableOrUnknown(data['imdb_id']!, _imdbIdMeta),
      );
    }
    if (data.containsKey('revenue')) {
      context.handle(
        _revenueMeta,
        revenue.isAcceptableOrUnknown(data['revenue']!, _revenueMeta),
      );
    }
    if (data.containsKey('runtime')) {
      context.handle(
        _runtimeMeta,
        runtime.isAcceptableOrUnknown(data['runtime']!, _runtimeMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('tagline')) {
      context.handle(
        _taglineMeta,
        tagline.isAcceptableOrUnknown(data['tagline']!, _taglineMeta),
      );
    }
    if (data.containsKey('is_favourite')) {
      context.handle(
        _isFavouriteMeta,
        isFavourite.isAcceptableOrUnknown(
          data['is_favourite']!,
          _isFavouriteMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MovieTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovieTable(
      adult: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}adult'],
      )!,
      backdrop: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}backdrop'],
      ),
      genreIds: $MoviesTable.$convertergenreIds.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}genre_ids'],
        )!,
      ),
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      originalLanguage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_language'],
      ),
      originalTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_title'],
      ),
      overview: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}overview'],
      ),
      popularity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}popularity'],
      ),
      posterPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_path'],
      ),
      releaseDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}release_date'],
      ),
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      ),
      video: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}video'],
      ),
      voteAverage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vote_average'],
      ),
      voteCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vote_count'],
      ),
      belongToCollection: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}belong_to_collection'],
      ),
      budget: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}budget'],
      ),
      homepage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}homepage'],
      ),
      imdbId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}imdb_id'],
      ),
      revenue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}revenue'],
      ),
      runtime: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}runtime'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      tagline: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tagline'],
      ),
      isFavourite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_favourite'],
      )!,
    );
  }

  @override
  $MoviesTable createAlias(String alias) {
    return $MoviesTable(attachedDatabase, alias);
  }

  static TypeConverter<List<int>, String> $convertergenreIds =
      IntListConverter();
}

class MovieTable extends DataClass implements Insertable<MovieTable> {
  final bool adult;
  final String? backdrop;
  final List<int> genreIds;
  final int id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final int? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
  final String? belongToCollection;
  final int? budget;
  final String? homepage;
  final String? imdbId;
  final int? revenue;
  final int? runtime;
  final String? status;
  final String? tagline;
  final bool isFavourite;
  const MovieTable({
    required this.adult,
    this.backdrop,
    required this.genreIds,
    required this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.belongToCollection,
    this.budget,
    this.homepage,
    this.imdbId,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    required this.isFavourite,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['adult'] = Variable<bool>(adult);
    if (!nullToAbsent || backdrop != null) {
      map['backdrop'] = Variable<String>(backdrop);
    }
    {
      map['genre_ids'] = Variable<String>(
        $MoviesTable.$convertergenreIds.toSql(genreIds),
      );
    }
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || originalLanguage != null) {
      map['original_language'] = Variable<String>(originalLanguage);
    }
    if (!nullToAbsent || originalTitle != null) {
      map['original_title'] = Variable<String>(originalTitle);
    }
    if (!nullToAbsent || overview != null) {
      map['overview'] = Variable<String>(overview);
    }
    if (!nullToAbsent || popularity != null) {
      map['popularity'] = Variable<int>(popularity);
    }
    if (!nullToAbsent || posterPath != null) {
      map['poster_path'] = Variable<String>(posterPath);
    }
    if (!nullToAbsent || releaseDate != null) {
      map['release_date'] = Variable<String>(releaseDate);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || video != null) {
      map['video'] = Variable<bool>(video);
    }
    if (!nullToAbsent || voteAverage != null) {
      map['vote_average'] = Variable<double>(voteAverage);
    }
    if (!nullToAbsent || voteCount != null) {
      map['vote_count'] = Variable<int>(voteCount);
    }
    if (!nullToAbsent || belongToCollection != null) {
      map['belong_to_collection'] = Variable<String>(belongToCollection);
    }
    if (!nullToAbsent || budget != null) {
      map['budget'] = Variable<int>(budget);
    }
    if (!nullToAbsent || homepage != null) {
      map['homepage'] = Variable<String>(homepage);
    }
    if (!nullToAbsent || imdbId != null) {
      map['imdb_id'] = Variable<String>(imdbId);
    }
    if (!nullToAbsent || revenue != null) {
      map['revenue'] = Variable<int>(revenue);
    }
    if (!nullToAbsent || runtime != null) {
      map['runtime'] = Variable<int>(runtime);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    if (!nullToAbsent || tagline != null) {
      map['tagline'] = Variable<String>(tagline);
    }
    map['is_favourite'] = Variable<bool>(isFavourite);
    return map;
  }

  MoviesCompanion toCompanion(bool nullToAbsent) {
    return MoviesCompanion(
      adult: Value(adult),
      backdrop: backdrop == null && nullToAbsent
          ? const Value.absent()
          : Value(backdrop),
      genreIds: Value(genreIds),
      id: Value(id),
      originalLanguage: originalLanguage == null && nullToAbsent
          ? const Value.absent()
          : Value(originalLanguage),
      originalTitle: originalTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(originalTitle),
      overview: overview == null && nullToAbsent
          ? const Value.absent()
          : Value(overview),
      popularity: popularity == null && nullToAbsent
          ? const Value.absent()
          : Value(popularity),
      posterPath: posterPath == null && nullToAbsent
          ? const Value.absent()
          : Value(posterPath),
      releaseDate: releaseDate == null && nullToAbsent
          ? const Value.absent()
          : Value(releaseDate),
      title: title == null && nullToAbsent
          ? const Value.absent()
          : Value(title),
      video: video == null && nullToAbsent
          ? const Value.absent()
          : Value(video),
      voteAverage: voteAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(voteAverage),
      voteCount: voteCount == null && nullToAbsent
          ? const Value.absent()
          : Value(voteCount),
      belongToCollection: belongToCollection == null && nullToAbsent
          ? const Value.absent()
          : Value(belongToCollection),
      budget: budget == null && nullToAbsent
          ? const Value.absent()
          : Value(budget),
      homepage: homepage == null && nullToAbsent
          ? const Value.absent()
          : Value(homepage),
      imdbId: imdbId == null && nullToAbsent
          ? const Value.absent()
          : Value(imdbId),
      revenue: revenue == null && nullToAbsent
          ? const Value.absent()
          : Value(revenue),
      runtime: runtime == null && nullToAbsent
          ? const Value.absent()
          : Value(runtime),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      tagline: tagline == null && nullToAbsent
          ? const Value.absent()
          : Value(tagline),
      isFavourite: Value(isFavourite),
    );
  }

  factory MovieTable.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieTable(
      adult: serializer.fromJson<bool>(json['adult']),
      backdrop: serializer.fromJson<String?>(json['backdrop']),
      genreIds: serializer.fromJson<List<int>>(json['genreIds']),
      id: serializer.fromJson<int>(json['id']),
      originalLanguage: serializer.fromJson<String?>(json['originalLanguage']),
      originalTitle: serializer.fromJson<String?>(json['originalTitle']),
      overview: serializer.fromJson<String?>(json['overview']),
      popularity: serializer.fromJson<int?>(json['popularity']),
      posterPath: serializer.fromJson<String?>(json['posterPath']),
      releaseDate: serializer.fromJson<String?>(json['releaseDate']),
      title: serializer.fromJson<String?>(json['title']),
      video: serializer.fromJson<bool?>(json['video']),
      voteAverage: serializer.fromJson<double?>(json['voteAverage']),
      voteCount: serializer.fromJson<int?>(json['voteCount']),
      belongToCollection: serializer.fromJson<String?>(
        json['belongToCollection'],
      ),
      budget: serializer.fromJson<int?>(json['budget']),
      homepage: serializer.fromJson<String?>(json['homepage']),
      imdbId: serializer.fromJson<String?>(json['imdbId']),
      revenue: serializer.fromJson<int?>(json['revenue']),
      runtime: serializer.fromJson<int?>(json['runtime']),
      status: serializer.fromJson<String?>(json['status']),
      tagline: serializer.fromJson<String?>(json['tagline']),
      isFavourite: serializer.fromJson<bool>(json['isFavourite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'adult': serializer.toJson<bool>(adult),
      'backdrop': serializer.toJson<String?>(backdrop),
      'genreIds': serializer.toJson<List<int>>(genreIds),
      'id': serializer.toJson<int>(id),
      'originalLanguage': serializer.toJson<String?>(originalLanguage),
      'originalTitle': serializer.toJson<String?>(originalTitle),
      'overview': serializer.toJson<String?>(overview),
      'popularity': serializer.toJson<int?>(popularity),
      'posterPath': serializer.toJson<String?>(posterPath),
      'releaseDate': serializer.toJson<String?>(releaseDate),
      'title': serializer.toJson<String?>(title),
      'video': serializer.toJson<bool?>(video),
      'voteAverage': serializer.toJson<double?>(voteAverage),
      'voteCount': serializer.toJson<int?>(voteCount),
      'belongToCollection': serializer.toJson<String?>(belongToCollection),
      'budget': serializer.toJson<int?>(budget),
      'homepage': serializer.toJson<String?>(homepage),
      'imdbId': serializer.toJson<String?>(imdbId),
      'revenue': serializer.toJson<int?>(revenue),
      'runtime': serializer.toJson<int?>(runtime),
      'status': serializer.toJson<String?>(status),
      'tagline': serializer.toJson<String?>(tagline),
      'isFavourite': serializer.toJson<bool>(isFavourite),
    };
  }

  MovieTable copyWith({
    bool? adult,
    Value<String?> backdrop = const Value.absent(),
    List<int>? genreIds,
    int? id,
    Value<String?> originalLanguage = const Value.absent(),
    Value<String?> originalTitle = const Value.absent(),
    Value<String?> overview = const Value.absent(),
    Value<int?> popularity = const Value.absent(),
    Value<String?> posterPath = const Value.absent(),
    Value<String?> releaseDate = const Value.absent(),
    Value<String?> title = const Value.absent(),
    Value<bool?> video = const Value.absent(),
    Value<double?> voteAverage = const Value.absent(),
    Value<int?> voteCount = const Value.absent(),
    Value<String?> belongToCollection = const Value.absent(),
    Value<int?> budget = const Value.absent(),
    Value<String?> homepage = const Value.absent(),
    Value<String?> imdbId = const Value.absent(),
    Value<int?> revenue = const Value.absent(),
    Value<int?> runtime = const Value.absent(),
    Value<String?> status = const Value.absent(),
    Value<String?> tagline = const Value.absent(),
    bool? isFavourite,
  }) => MovieTable(
    adult: adult ?? this.adult,
    backdrop: backdrop.present ? backdrop.value : this.backdrop,
    genreIds: genreIds ?? this.genreIds,
    id: id ?? this.id,
    originalLanguage: originalLanguage.present
        ? originalLanguage.value
        : this.originalLanguage,
    originalTitle: originalTitle.present
        ? originalTitle.value
        : this.originalTitle,
    overview: overview.present ? overview.value : this.overview,
    popularity: popularity.present ? popularity.value : this.popularity,
    posterPath: posterPath.present ? posterPath.value : this.posterPath,
    releaseDate: releaseDate.present ? releaseDate.value : this.releaseDate,
    title: title.present ? title.value : this.title,
    video: video.present ? video.value : this.video,
    voteAverage: voteAverage.present ? voteAverage.value : this.voteAverage,
    voteCount: voteCount.present ? voteCount.value : this.voteCount,
    belongToCollection: belongToCollection.present
        ? belongToCollection.value
        : this.belongToCollection,
    budget: budget.present ? budget.value : this.budget,
    homepage: homepage.present ? homepage.value : this.homepage,
    imdbId: imdbId.present ? imdbId.value : this.imdbId,
    revenue: revenue.present ? revenue.value : this.revenue,
    runtime: runtime.present ? runtime.value : this.runtime,
    status: status.present ? status.value : this.status,
    tagline: tagline.present ? tagline.value : this.tagline,
    isFavourite: isFavourite ?? this.isFavourite,
  );
  MovieTable copyWithCompanion(MoviesCompanion data) {
    return MovieTable(
      adult: data.adult.present ? data.adult.value : this.adult,
      backdrop: data.backdrop.present ? data.backdrop.value : this.backdrop,
      genreIds: data.genreIds.present ? data.genreIds.value : this.genreIds,
      id: data.id.present ? data.id.value : this.id,
      originalLanguage: data.originalLanguage.present
          ? data.originalLanguage.value
          : this.originalLanguage,
      originalTitle: data.originalTitle.present
          ? data.originalTitle.value
          : this.originalTitle,
      overview: data.overview.present ? data.overview.value : this.overview,
      popularity: data.popularity.present
          ? data.popularity.value
          : this.popularity,
      posterPath: data.posterPath.present
          ? data.posterPath.value
          : this.posterPath,
      releaseDate: data.releaseDate.present
          ? data.releaseDate.value
          : this.releaseDate,
      title: data.title.present ? data.title.value : this.title,
      video: data.video.present ? data.video.value : this.video,
      voteAverage: data.voteAverage.present
          ? data.voteAverage.value
          : this.voteAverage,
      voteCount: data.voteCount.present ? data.voteCount.value : this.voteCount,
      belongToCollection: data.belongToCollection.present
          ? data.belongToCollection.value
          : this.belongToCollection,
      budget: data.budget.present ? data.budget.value : this.budget,
      homepage: data.homepage.present ? data.homepage.value : this.homepage,
      imdbId: data.imdbId.present ? data.imdbId.value : this.imdbId,
      revenue: data.revenue.present ? data.revenue.value : this.revenue,
      runtime: data.runtime.present ? data.runtime.value : this.runtime,
      status: data.status.present ? data.status.value : this.status,
      tagline: data.tagline.present ? data.tagline.value : this.tagline,
      isFavourite: data.isFavourite.present
          ? data.isFavourite.value
          : this.isFavourite,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MovieTable(')
          ..write('adult: $adult, ')
          ..write('backdrop: $backdrop, ')
          ..write('genreIds: $genreIds, ')
          ..write('id: $id, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('overview: $overview, ')
          ..write('popularity: $popularity, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount, ')
          ..write('belongToCollection: $belongToCollection, ')
          ..write('budget: $budget, ')
          ..write('homepage: $homepage, ')
          ..write('imdbId: $imdbId, ')
          ..write('revenue: $revenue, ')
          ..write('runtime: $runtime, ')
          ..write('status: $status, ')
          ..write('tagline: $tagline, ')
          ..write('isFavourite: $isFavourite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    adult,
    backdrop,
    genreIds,
    id,
    originalLanguage,
    originalTitle,
    overview,
    popularity,
    posterPath,
    releaseDate,
    title,
    video,
    voteAverage,
    voteCount,
    belongToCollection,
    budget,
    homepage,
    imdbId,
    revenue,
    runtime,
    status,
    tagline,
    isFavourite,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieTable &&
          other.adult == this.adult &&
          other.backdrop == this.backdrop &&
          other.genreIds == this.genreIds &&
          other.id == this.id &&
          other.originalLanguage == this.originalLanguage &&
          other.originalTitle == this.originalTitle &&
          other.overview == this.overview &&
          other.popularity == this.popularity &&
          other.posterPath == this.posterPath &&
          other.releaseDate == this.releaseDate &&
          other.title == this.title &&
          other.video == this.video &&
          other.voteAverage == this.voteAverage &&
          other.voteCount == this.voteCount &&
          other.belongToCollection == this.belongToCollection &&
          other.budget == this.budget &&
          other.homepage == this.homepage &&
          other.imdbId == this.imdbId &&
          other.revenue == this.revenue &&
          other.runtime == this.runtime &&
          other.status == this.status &&
          other.tagline == this.tagline &&
          other.isFavourite == this.isFavourite);
}

class MoviesCompanion extends UpdateCompanion<MovieTable> {
  final Value<bool> adult;
  final Value<String?> backdrop;
  final Value<List<int>> genreIds;
  final Value<int> id;
  final Value<String?> originalLanguage;
  final Value<String?> originalTitle;
  final Value<String?> overview;
  final Value<int?> popularity;
  final Value<String?> posterPath;
  final Value<String?> releaseDate;
  final Value<String?> title;
  final Value<bool?> video;
  final Value<double?> voteAverage;
  final Value<int?> voteCount;
  final Value<String?> belongToCollection;
  final Value<int?> budget;
  final Value<String?> homepage;
  final Value<String?> imdbId;
  final Value<int?> revenue;
  final Value<int?> runtime;
  final Value<String?> status;
  final Value<String?> tagline;
  final Value<bool> isFavourite;
  const MoviesCompanion({
    this.adult = const Value.absent(),
    this.backdrop = const Value.absent(),
    this.genreIds = const Value.absent(),
    this.id = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.overview = const Value.absent(),
    this.popularity = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
    this.belongToCollection = const Value.absent(),
    this.budget = const Value.absent(),
    this.homepage = const Value.absent(),
    this.imdbId = const Value.absent(),
    this.revenue = const Value.absent(),
    this.runtime = const Value.absent(),
    this.status = const Value.absent(),
    this.tagline = const Value.absent(),
    this.isFavourite = const Value.absent(),
  });
  MoviesCompanion.insert({
    this.adult = const Value.absent(),
    this.backdrop = const Value.absent(),
    required List<int> genreIds,
    this.id = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.overview = const Value.absent(),
    this.popularity = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
    this.belongToCollection = const Value.absent(),
    this.budget = const Value.absent(),
    this.homepage = const Value.absent(),
    this.imdbId = const Value.absent(),
    this.revenue = const Value.absent(),
    this.runtime = const Value.absent(),
    this.status = const Value.absent(),
    this.tagline = const Value.absent(),
    this.isFavourite = const Value.absent(),
  }) : genreIds = Value(genreIds);
  static Insertable<MovieTable> custom({
    Expression<bool>? adult,
    Expression<String>? backdrop,
    Expression<String>? genreIds,
    Expression<int>? id,
    Expression<String>? originalLanguage,
    Expression<String>? originalTitle,
    Expression<String>? overview,
    Expression<int>? popularity,
    Expression<String>? posterPath,
    Expression<String>? releaseDate,
    Expression<String>? title,
    Expression<bool>? video,
    Expression<double>? voteAverage,
    Expression<int>? voteCount,
    Expression<String>? belongToCollection,
    Expression<int>? budget,
    Expression<String>? homepage,
    Expression<String>? imdbId,
    Expression<int>? revenue,
    Expression<int>? runtime,
    Expression<String>? status,
    Expression<String>? tagline,
    Expression<bool>? isFavourite,
  }) {
    return RawValuesInsertable({
      if (adult != null) 'adult': adult,
      if (backdrop != null) 'backdrop': backdrop,
      if (genreIds != null) 'genre_ids': genreIds,
      if (id != null) 'id': id,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (originalTitle != null) 'original_title': originalTitle,
      if (overview != null) 'overview': overview,
      if (popularity != null) 'popularity': popularity,
      if (posterPath != null) 'poster_path': posterPath,
      if (releaseDate != null) 'release_date': releaseDate,
      if (title != null) 'title': title,
      if (video != null) 'video': video,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (voteCount != null) 'vote_count': voteCount,
      if (belongToCollection != null)
        'belong_to_collection': belongToCollection,
      if (budget != null) 'budget': budget,
      if (homepage != null) 'homepage': homepage,
      if (imdbId != null) 'imdb_id': imdbId,
      if (revenue != null) 'revenue': revenue,
      if (runtime != null) 'runtime': runtime,
      if (status != null) 'status': status,
      if (tagline != null) 'tagline': tagline,
      if (isFavourite != null) 'is_favourite': isFavourite,
    });
  }

  MoviesCompanion copyWith({
    Value<bool>? adult,
    Value<String?>? backdrop,
    Value<List<int>>? genreIds,
    Value<int>? id,
    Value<String?>? originalLanguage,
    Value<String?>? originalTitle,
    Value<String?>? overview,
    Value<int?>? popularity,
    Value<String?>? posterPath,
    Value<String?>? releaseDate,
    Value<String?>? title,
    Value<bool?>? video,
    Value<double?>? voteAverage,
    Value<int?>? voteCount,
    Value<String?>? belongToCollection,
    Value<int?>? budget,
    Value<String?>? homepage,
    Value<String?>? imdbId,
    Value<int?>? revenue,
    Value<int?>? runtime,
    Value<String?>? status,
    Value<String?>? tagline,
    Value<bool>? isFavourite,
  }) {
    return MoviesCompanion(
      adult: adult ?? this.adult,
      backdrop: backdrop ?? this.backdrop,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
      belongToCollection: belongToCollection ?? this.belongToCollection,
      budget: budget ?? this.budget,
      homepage: homepage ?? this.homepage,
      imdbId: imdbId ?? this.imdbId,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      status: status ?? this.status,
      tagline: tagline ?? this.tagline,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (adult.present) {
      map['adult'] = Variable<bool>(adult.value);
    }
    if (backdrop.present) {
      map['backdrop'] = Variable<String>(backdrop.value);
    }
    if (genreIds.present) {
      map['genre_ids'] = Variable<String>(
        $MoviesTable.$convertergenreIds.toSql(genreIds.value),
      );
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>(originalLanguage.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<int>(popularity.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String>(releaseDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (video.present) {
      map['video'] = Variable<bool>(video.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    if (voteCount.present) {
      map['vote_count'] = Variable<int>(voteCount.value);
    }
    if (belongToCollection.present) {
      map['belong_to_collection'] = Variable<String>(belongToCollection.value);
    }
    if (budget.present) {
      map['budget'] = Variable<int>(budget.value);
    }
    if (homepage.present) {
      map['homepage'] = Variable<String>(homepage.value);
    }
    if (imdbId.present) {
      map['imdb_id'] = Variable<String>(imdbId.value);
    }
    if (revenue.present) {
      map['revenue'] = Variable<int>(revenue.value);
    }
    if (runtime.present) {
      map['runtime'] = Variable<int>(runtime.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (tagline.present) {
      map['tagline'] = Variable<String>(tagline.value);
    }
    if (isFavourite.present) {
      map['is_favourite'] = Variable<bool>(isFavourite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesCompanion(')
          ..write('adult: $adult, ')
          ..write('backdrop: $backdrop, ')
          ..write('genreIds: $genreIds, ')
          ..write('id: $id, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('overview: $overview, ')
          ..write('popularity: $popularity, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount, ')
          ..write('belongToCollection: $belongToCollection, ')
          ..write('budget: $budget, ')
          ..write('homepage: $homepage, ')
          ..write('imdbId: $imdbId, ')
          ..write('revenue: $revenue, ')
          ..write('runtime: $runtime, ')
          ..write('status: $status, ')
          ..write('tagline: $tagline, ')
          ..write('isFavourite: $isFavourite')
          ..write(')'))
        .toString();
  }
}

class $GenresTable extends Genres with TableInfo<$GenresTable, GenreTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GenresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'genres';
  @override
  VerificationContext validateIntegrity(
    Insertable<GenreTable> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GenreTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GenreTable(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $GenresTable createAlias(String alias) {
    return $GenresTable(attachedDatabase, alias);
  }
}

class GenreTable extends DataClass implements Insertable<GenreTable> {
  final int id;
  final String name;
  const GenreTable({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  GenresCompanion toCompanion(bool nullToAbsent) {
    return GenresCompanion(id: Value(id), name: Value(name));
  }

  factory GenreTable.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GenreTable(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  GenreTable copyWith({int? id, String? name}) =>
      GenreTable(id: id ?? this.id, name: name ?? this.name);
  GenreTable copyWithCompanion(GenresCompanion data) {
    return GenreTable(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GenreTable(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GenreTable && other.id == this.id && other.name == this.name);
}

class GenresCompanion extends UpdateCompanion<GenreTable> {
  final Value<int> id;
  final Value<String> name;
  const GenresCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  GenresCompanion.insert({this.id = const Value.absent(), required String name})
    : name = Value(name);
  static Insertable<GenreTable> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  GenresCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return GenresCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GenresCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MoviesTable movies = $MoviesTable(this);
  late final $GenresTable genres = $GenresTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movies, genres];
}

typedef $$MoviesTableCreateCompanionBuilder =
    MoviesCompanion Function({
      Value<bool> adult,
      Value<String?> backdrop,
      required List<int> genreIds,
      Value<int> id,
      Value<String?> originalLanguage,
      Value<String?> originalTitle,
      Value<String?> overview,
      Value<int?> popularity,
      Value<String?> posterPath,
      Value<String?> releaseDate,
      Value<String?> title,
      Value<bool?> video,
      Value<double?> voteAverage,
      Value<int?> voteCount,
      Value<String?> belongToCollection,
      Value<int?> budget,
      Value<String?> homepage,
      Value<String?> imdbId,
      Value<int?> revenue,
      Value<int?> runtime,
      Value<String?> status,
      Value<String?> tagline,
      Value<bool> isFavourite,
    });
typedef $$MoviesTableUpdateCompanionBuilder =
    MoviesCompanion Function({
      Value<bool> adult,
      Value<String?> backdrop,
      Value<List<int>> genreIds,
      Value<int> id,
      Value<String?> originalLanguage,
      Value<String?> originalTitle,
      Value<String?> overview,
      Value<int?> popularity,
      Value<String?> posterPath,
      Value<String?> releaseDate,
      Value<String?> title,
      Value<bool?> video,
      Value<double?> voteAverage,
      Value<int?> voteCount,
      Value<String?> belongToCollection,
      Value<int?> budget,
      Value<String?> homepage,
      Value<String?> imdbId,
      Value<int?> revenue,
      Value<int?> runtime,
      Value<String?> status,
      Value<String?> tagline,
      Value<bool> isFavourite,
    });

class $$MoviesTableFilterComposer
    extends Composer<_$AppDatabase, $MoviesTable> {
  $$MoviesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get adult => $composableBuilder(
    column: $table.adult,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get backdrop => $composableBuilder(
    column: $table.backdrop,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get genreIds =>
      $composableBuilder(
        column: $table.genreIds,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalLanguage => $composableBuilder(
    column: $table.originalLanguage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get overview => $composableBuilder(
    column: $table.overview,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get popularity => $composableBuilder(
    column: $table.popularity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get releaseDate => $composableBuilder(
    column: $table.releaseDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get video => $composableBuilder(
    column: $table.video,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get voteCount => $composableBuilder(
    column: $table.voteCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get belongToCollection => $composableBuilder(
    column: $table.belongToCollection,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get budget => $composableBuilder(
    column: $table.budget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get homepage => $composableBuilder(
    column: $table.homepage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imdbId => $composableBuilder(
    column: $table.imdbId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get revenue => $composableBuilder(
    column: $table.revenue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get runtime => $composableBuilder(
    column: $table.runtime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagline => $composableBuilder(
    column: $table.tagline,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFavourite => $composableBuilder(
    column: $table.isFavourite,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MoviesTableOrderingComposer
    extends Composer<_$AppDatabase, $MoviesTable> {
  $$MoviesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get adult => $composableBuilder(
    column: $table.adult,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get backdrop => $composableBuilder(
    column: $table.backdrop,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get genreIds => $composableBuilder(
    column: $table.genreIds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalLanguage => $composableBuilder(
    column: $table.originalLanguage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get overview => $composableBuilder(
    column: $table.overview,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get popularity => $composableBuilder(
    column: $table.popularity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get releaseDate => $composableBuilder(
    column: $table.releaseDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get video => $composableBuilder(
    column: $table.video,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get voteCount => $composableBuilder(
    column: $table.voteCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get belongToCollection => $composableBuilder(
    column: $table.belongToCollection,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get budget => $composableBuilder(
    column: $table.budget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get homepage => $composableBuilder(
    column: $table.homepage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imdbId => $composableBuilder(
    column: $table.imdbId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get revenue => $composableBuilder(
    column: $table.revenue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get runtime => $composableBuilder(
    column: $table.runtime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagline => $composableBuilder(
    column: $table.tagline,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFavourite => $composableBuilder(
    column: $table.isFavourite,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MoviesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MoviesTable> {
  $$MoviesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get adult =>
      $composableBuilder(column: $table.adult, builder: (column) => column);

  GeneratedColumn<String> get backdrop =>
      $composableBuilder(column: $table.backdrop, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<int>, String> get genreIds =>
      $composableBuilder(column: $table.genreIds, builder: (column) => column);

  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get originalLanguage => $composableBuilder(
    column: $table.originalLanguage,
    builder: (column) => column,
  );

  GeneratedColumn<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get overview =>
      $composableBuilder(column: $table.overview, builder: (column) => column);

  GeneratedColumn<int> get popularity => $composableBuilder(
    column: $table.popularity,
    builder: (column) => column,
  );

  GeneratedColumn<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get releaseDate => $composableBuilder(
    column: $table.releaseDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<bool> get video =>
      $composableBuilder(column: $table.video, builder: (column) => column);

  GeneratedColumn<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => column,
  );

  GeneratedColumn<int> get voteCount =>
      $composableBuilder(column: $table.voteCount, builder: (column) => column);

  GeneratedColumn<String> get belongToCollection => $composableBuilder(
    column: $table.belongToCollection,
    builder: (column) => column,
  );

  GeneratedColumn<int> get budget =>
      $composableBuilder(column: $table.budget, builder: (column) => column);

  GeneratedColumn<String> get homepage =>
      $composableBuilder(column: $table.homepage, builder: (column) => column);

  GeneratedColumn<String> get imdbId =>
      $composableBuilder(column: $table.imdbId, builder: (column) => column);

  GeneratedColumn<int> get revenue =>
      $composableBuilder(column: $table.revenue, builder: (column) => column);

  GeneratedColumn<int> get runtime =>
      $composableBuilder(column: $table.runtime, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get tagline =>
      $composableBuilder(column: $table.tagline, builder: (column) => column);

  GeneratedColumn<bool> get isFavourite => $composableBuilder(
    column: $table.isFavourite,
    builder: (column) => column,
  );
}

class $$MoviesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MoviesTable,
          MovieTable,
          $$MoviesTableFilterComposer,
          $$MoviesTableOrderingComposer,
          $$MoviesTableAnnotationComposer,
          $$MoviesTableCreateCompanionBuilder,
          $$MoviesTableUpdateCompanionBuilder,
          (MovieTable, BaseReferences<_$AppDatabase, $MoviesTable, MovieTable>),
          MovieTable,
          PrefetchHooks Function()
        > {
  $$MoviesTableTableManager(_$AppDatabase db, $MoviesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoviesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoviesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoviesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<bool> adult = const Value.absent(),
                Value<String?> backdrop = const Value.absent(),
                Value<List<int>> genreIds = const Value.absent(),
                Value<int> id = const Value.absent(),
                Value<String?> originalLanguage = const Value.absent(),
                Value<String?> originalTitle = const Value.absent(),
                Value<String?> overview = const Value.absent(),
                Value<int?> popularity = const Value.absent(),
                Value<String?> posterPath = const Value.absent(),
                Value<String?> releaseDate = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<bool?> video = const Value.absent(),
                Value<double?> voteAverage = const Value.absent(),
                Value<int?> voteCount = const Value.absent(),
                Value<String?> belongToCollection = const Value.absent(),
                Value<int?> budget = const Value.absent(),
                Value<String?> homepage = const Value.absent(),
                Value<String?> imdbId = const Value.absent(),
                Value<int?> revenue = const Value.absent(),
                Value<int?> runtime = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<String?> tagline = const Value.absent(),
                Value<bool> isFavourite = const Value.absent(),
              }) => MoviesCompanion(
                adult: adult,
                backdrop: backdrop,
                genreIds: genreIds,
                id: id,
                originalLanguage: originalLanguage,
                originalTitle: originalTitle,
                overview: overview,
                popularity: popularity,
                posterPath: posterPath,
                releaseDate: releaseDate,
                title: title,
                video: video,
                voteAverage: voteAverage,
                voteCount: voteCount,
                belongToCollection: belongToCollection,
                budget: budget,
                homepage: homepage,
                imdbId: imdbId,
                revenue: revenue,
                runtime: runtime,
                status: status,
                tagline: tagline,
                isFavourite: isFavourite,
              ),
          createCompanionCallback:
              ({
                Value<bool> adult = const Value.absent(),
                Value<String?> backdrop = const Value.absent(),
                required List<int> genreIds,
                Value<int> id = const Value.absent(),
                Value<String?> originalLanguage = const Value.absent(),
                Value<String?> originalTitle = const Value.absent(),
                Value<String?> overview = const Value.absent(),
                Value<int?> popularity = const Value.absent(),
                Value<String?> posterPath = const Value.absent(),
                Value<String?> releaseDate = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<bool?> video = const Value.absent(),
                Value<double?> voteAverage = const Value.absent(),
                Value<int?> voteCount = const Value.absent(),
                Value<String?> belongToCollection = const Value.absent(),
                Value<int?> budget = const Value.absent(),
                Value<String?> homepage = const Value.absent(),
                Value<String?> imdbId = const Value.absent(),
                Value<int?> revenue = const Value.absent(),
                Value<int?> runtime = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<String?> tagline = const Value.absent(),
                Value<bool> isFavourite = const Value.absent(),
              }) => MoviesCompanion.insert(
                adult: adult,
                backdrop: backdrop,
                genreIds: genreIds,
                id: id,
                originalLanguage: originalLanguage,
                originalTitle: originalTitle,
                overview: overview,
                popularity: popularity,
                posterPath: posterPath,
                releaseDate: releaseDate,
                title: title,
                video: video,
                voteAverage: voteAverage,
                voteCount: voteCount,
                belongToCollection: belongToCollection,
                budget: budget,
                homepage: homepage,
                imdbId: imdbId,
                revenue: revenue,
                runtime: runtime,
                status: status,
                tagline: tagline,
                isFavourite: isFavourite,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MoviesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MoviesTable,
      MovieTable,
      $$MoviesTableFilterComposer,
      $$MoviesTableOrderingComposer,
      $$MoviesTableAnnotationComposer,
      $$MoviesTableCreateCompanionBuilder,
      $$MoviesTableUpdateCompanionBuilder,
      (MovieTable, BaseReferences<_$AppDatabase, $MoviesTable, MovieTable>),
      MovieTable,
      PrefetchHooks Function()
    >;
typedef $$GenresTableCreateCompanionBuilder =
    GenresCompanion Function({Value<int> id, required String name});
typedef $$GenresTableUpdateCompanionBuilder =
    GenresCompanion Function({Value<int> id, Value<String> name});

class $$GenresTableFilterComposer
    extends Composer<_$AppDatabase, $GenresTable> {
  $$GenresTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GenresTableOrderingComposer
    extends Composer<_$AppDatabase, $GenresTable> {
  $$GenresTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GenresTableAnnotationComposer
    extends Composer<_$AppDatabase, $GenresTable> {
  $$GenresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);
}

class $$GenresTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GenresTable,
          GenreTable,
          $$GenresTableFilterComposer,
          $$GenresTableOrderingComposer,
          $$GenresTableAnnotationComposer,
          $$GenresTableCreateCompanionBuilder,
          $$GenresTableUpdateCompanionBuilder,
          (GenreTable, BaseReferences<_$AppDatabase, $GenresTable, GenreTable>),
          GenreTable,
          PrefetchHooks Function()
        > {
  $$GenresTableTableManager(_$AppDatabase db, $GenresTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GenresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GenresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GenresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
              }) => GenresCompanion(id: id, name: name),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String name}) =>
                  GenresCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GenresTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GenresTable,
      GenreTable,
      $$GenresTableFilterComposer,
      $$GenresTableOrderingComposer,
      $$GenresTableAnnotationComposer,
      $$GenresTableCreateCompanionBuilder,
      $$GenresTableUpdateCompanionBuilder,
      (GenreTable, BaseReferences<_$AppDatabase, $GenresTable, GenreTable>),
      GenreTable,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MoviesTableTableManager get movies =>
      $$MoviesTableTableManager(_db, _db.movies);
  $$GenresTableTableManager get genres =>
      $$GenresTableTableManager(_db, _db.genres);
}
