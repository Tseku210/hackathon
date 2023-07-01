function asyncWrapper(asyncHandler) {
	return function (req, res, next) {
		return Promise.resolve(asyncHandler(req, res, next)).catch(next);
	};
}

export default asyncWrapper;
